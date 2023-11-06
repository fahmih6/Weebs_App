part of 'video_player_cubit.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.state({
    ChewieController? chewieController,
    Duration? lastPosition,
  }) = _State;
}
