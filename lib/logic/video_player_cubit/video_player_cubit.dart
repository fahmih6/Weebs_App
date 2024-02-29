import 'package:chewie/chewie.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/widgets/video_players/video_player_controls.dart';

import '../../widgets/video_players/video_fullscreen_widget.dart';
import '../../widgets/video_players/video_resolution_bottomsheet.dart';

part 'video_player_state.dart';
part 'video_player_cubit.freezed.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerController? videoPlayerController;
  VideoPlayerCubit() : super(const VideoPlayerState.state());

  void loadVideo({
    required List<AnoboyLinksItemModel> links,
    required String url,
  }) async {
    /// Remove listener
    videoPlayerController?.removeListener(videoPlayerDurationListener);

    /// Dispose old video controller
    videoPlayerController?.dispose();

    /// Load new video controller
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(url),
      httpHeaders: <String, String>{
        ...?links.firstWhereOrNull((element) => element.link == url)?.headers
      },
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: false,
        mixWithOthers: true,
      ),
    );

    /// Assign Video Contrller to Chewie
    emit(
      state.copyWith(
        chewieController: ChewieController(
          videoPlayerController: videoPlayerController!,
          additionalOptions: (context) {
            return [
              OptionItem(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return VideoResolutionBottomSheet(
                        links: links,
                      );
                    },
                  );
                },
                iconData: Icons.settings,
                title: 'Resolution',
              ),
            ];
          },
          allowFullScreen: true,
          allowedScreenSleep: false,
          autoInitialize: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          deviceOrientationsAfterFullScreen: DeviceOrientation.values,
          isLive: false,
          showControlsOnInitialize: true,
          draggableProgressBar: true,
          showControls: true,
          startAt: state.lastPosition,
          customControls: const VideoPlayerControls(),
          routePageBuilder: (
            context,
            animation,
            secondaryAnimation,
            controllerProvider,
          ) {
            return VideoFullscreenWidget(
              animation: animation,
              controllerProvider: controllerProvider,
            );
          },
        ),
        url: url,
      ),
    );

    /// Video player duration listener
    videoPlayerController?.addListener(videoPlayerDurationListener);
  }

  /// Video player duration listener
  void videoPlayerDurationListener() {
    emit(state.copyWith(lastPosition: videoPlayerController?.value.position));
  }

  /// Reset
  void reset() {
    state.chewieController?.dispose();
    videoPlayerController?.removeListener(videoPlayerDurationListener);
    videoPlayerController?.dispose();

    emit(const VideoPlayerState.state());
  }

  /// Web Reinitialize
  void webReinitialize() {
    /// URL
    final url = state.url;

    /// Make sure url is empty
    if (url != null) {
      /// Remove video player listener
      videoPlayerController?.removeListener(videoPlayerDurationListener);

      /// Headers
      final headers = videoPlayerController?.httpHeaders;

      /// Options
      final options = videoPlayerController?.videoPlayerOptions;

      /// Video player controller
      videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(url),
        httpHeaders: headers ?? {},
        videoPlayerOptions: options,
      )..initialize().then((value) {
          /// Seek to the latest position
          videoPlayerController
              ?.seekTo(state.lastPosition ?? const Duration(seconds: 0));

          /// Add back the listener
          videoPlayerController?.addListener(videoPlayerDurationListener);
        });

      emit(
        state.copyWith(
          chewieController: state.chewieController?.copyWith(
            videoPlayerController: videoPlayerController,
          ),
        ),
      );

      /// Play the video
      state.chewieController?.play();
    }
  }

  @override
  Future<void> close() {
    state.chewieController?.dispose();
    videoPlayerController?.removeListener(videoPlayerDurationListener);
    videoPlayerController?.dispose();
    return super.close();
  }
}
