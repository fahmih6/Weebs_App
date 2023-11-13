part of 'appbar_video_cubit.dart';

@freezed
class AppbarVideoState with _$AppbarVideoState {
  const factory AppbarVideoState.state({
    VideoPlayerController? videoPlayerController,
  }) = _State;
}
