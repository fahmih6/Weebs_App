import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';

part 'appbar_video_state.dart';
part 'appbar_video_cubit.freezed.dart';

class AppbarVideoCubit extends Cubit<AppbarVideoState> {
  VideoPlayerController? videoPlayerController;
  AppbarVideoCubit() : super(const AppbarVideoState.state());

  /// Init Video
  void init({required String param}) async {
    /// Get the link
    final animeDetail =
        await getIt<AnoboyRepository>().getAnimeDetail(param: param);

    /// Remove listener
    videoPlayerController?.removeListener(positionListener);

    await animeDetail.fold(
      (l) => null,
      (r) async {
        /// Dispose old controller
        videoPlayerController?.dispose();

        /// Assign new video player controller
        videoPlayerController = VideoPlayerController.networkUrl(
          Uri.parse(r.videoDirectLinks.first.link),
          httpHeaders: <String, String>{...?r.videoDirectLinks.first.headers},
          videoPlayerOptions: VideoPlayerOptions(
            mixWithOthers: false,
            allowBackgroundPlayback: false,
          ),
        );

        /// Initialize the player
        await videoPlayerController?.initialize();

        /// Play the video
        if (videoPlayerController?.value.isInitialized == true) {
          await videoPlayerController?.play();
          await videoPlayerController?.setVolume(0);
          await videoPlayerController?.pause();

          /// Add listener
          videoPlayerController?.addListener(positionListener);
        }

        /// Emit video player controller.
        emit(
          AppbarVideoState.state(
            videoPlayerController: videoPlayerController,
          ),
        );
      },
    );
  }

  /// Toggle Appbar Visibility
  void toggleAppbarVisibility({required bool isVisible}) {
    emit(
      state.copyWith(
        isVisible: isVisible,
      ),
    );
  }

  /// Reset
  void reset() {
    videoPlayerController?.removeListener(positionListener);
    videoPlayerController?.dispose();
    emit(const AppbarVideoState.state());
  }

  /// Position Listener
  void positionListener() async {
    final position = videoPlayerController?.value.position;

    /// Position is exceeding 90 seconds
    if (position != null && position >= const Duration(seconds: 90)) {
      videoPlayerController?.removeListener(positionListener);
      await videoPlayerController?.dispose();

      /// Emit should stop.
      emit(
        state.copyWith(
          shouldStop: true,
        ),
      );
    }
  }

  /// Close
  @override
  Future<void> close() {
    videoPlayerController?.removeListener(positionListener);
    videoPlayerController?.dispose();
    return super.close();
  }
}
