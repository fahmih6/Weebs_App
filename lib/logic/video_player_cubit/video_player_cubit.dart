import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:cached_video_player_plus/cached_video_player_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';

part 'video_player_state.dart';
part 'video_player_cubit.freezed.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  final videoPlayerKey = GlobalKey();
  VideoPlayerCubit() : super(const VideoPlayerState.state());

  void loadVideo({
    required List<AnoboyLinksItemModel> links,
    String? url,
  }) async {
    /// Selected Link
    AnoboyLinksItemModel? selectedLink;

    if (url != null) {
      selectedLink = links.firstWhereOrNull((element) => element.link == url);
    } else {
      /// Default to 720p
      selectedLink = links.firstWhereOrNull(
        (element) => element.resolution.contains("720"),
      );

      /// Fallback to nearest possible from the highest resolution
      if (selectedLink == null && links.isNotEmpty) {
        final sortedLinks = List<AnoboyLinksItemModel>.from(links)
          ..sort((a, b) {
            final resA =
                int.tryParse(
                  RegExp(r'\d+').firstMatch(a.resolution)?.group(0) ?? "0",
                ) ??
                0;
            final resB =
                int.tryParse(
                  RegExp(r'\d+').firstMatch(b.resolution)?.group(0) ?? "0",
                ) ??
                0;
            return resB.compareTo(resA);
          });
        selectedLink = sortedLinks.first;
      }
    }

    if (selectedLink == null || selectedLink.link.isEmpty) {
      emit(state.copyWith(controller: null, url: null));
      return;
    }

    /// URL check to prevent redundant reload
    if (state.url == selectedLink.link &&
        state.controller != null &&
        state.controller!.isInitialized) {
      return;
    }

    /// Emit state without controller first to show loader
    final oldController = state.controller;
    emit(state.copyWith(controller: null, url: selectedLink.link));

    /// Dispose old video controller
    await oldController?.dispose();

    final proxiedUrl = _getProxiedUrl(selectedLink.link, selectedLink.headers);

    /// Load new video controller
    final player = CachedVideoPlayerPlus.networkUrl(
      Uri.parse(proxiedUrl),
      httpHeaders: kIsWeb
          ? const {} // Avoid CORS preflight on Web as headers are in the proxy URL
          : selectedLink.headers?.map(
                  (key, value) => MapEntry(key, value.toString()),
                ) ??
                const {},
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    try {
      await player.initialize();
      emit(
        state.copyWith(
          controller: player,
          url: selectedLink.link,
          links: links,
        ),
      );
      player.controller.play();
    } catch (e) {
      debugPrint("Error loading video: $e");
    }

    /// Seek to last position if any
    if (state.lastPosition != null) {
      await player.controller.seekTo(state.lastPosition!);
    }

    /// Play
    await player.controller.play();

    /// Add listener for duration
    player.controller.addListener(() {
      if (player.controller.value.isInitialized) {
        emit(state.copyWith(lastPosition: player.controller.value.position));
      }
    });
  }

  /// Get Proxied URL
  String _getProxiedUrl(String url, Map<String, dynamic>? headers) {
    if (url.isEmpty) return "";

    /// If url already contains the video proxy, return it as is.
    if (url.contains(Endpoints.videoProxy)) {
      return url;
    }

    final encodedUrl = Uri.encodeComponent(url);
    var proxiedUrl = "${Endpoints.videoProxy}$encodedUrl";

    if (headers != null) {
      headers.forEach((key, value) {
        proxiedUrl +=
            '&${key.toLowerCase()}=${Uri.encodeComponent(value.toString())}';
      });
    }

    return proxiedUrl;
  }

  /// Set Full Screen
  void setFullScreen(bool value) {
    emit(state.copyWith(isFullScreen: value));
  }

  /// Reset
  void reset() {
    state.controller?.dispose();
    emit(const VideoPlayerState.state());
  }

  @override
  Future<void> close() async {
    await state.controller?.dispose();
    return super.close();
  }
}
