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

    await animeDetail.fold(
      (l) => null,
      (r) async {
        /// Dispose old controller
        videoPlayerController?.dispose();

        /// Assign new video player controller
        videoPlayerController = VideoPlayerController.networkUrl(
          Uri.parse(r.videoDirectLinks.last.link),
          httpHeaders: <String, String>{...?r.videoDirectLinks.last.headers},
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

  /// Reset
  void reset() {
    videoPlayerController?.dispose();
    emit(const AppbarVideoState.state());
  }

  /// Close
  @override
  Future<void> close() {
    videoPlayerController?.dispose();
    return super.close();
  }
}
