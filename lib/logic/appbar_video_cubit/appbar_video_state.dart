part of 'appbar_video_cubit.dart';

@freezed
sealed class AppbarVideoState with _$AppbarVideoState {
  const factory AppbarVideoState.state({
    CachedVideoPlayerPlus? videoPlayerController,
    @Default(false) bool shouldStop,
    @Default(true) bool isVisible,
  }) = _State;
}
