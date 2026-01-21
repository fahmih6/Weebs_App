part of 'video_player_cubit.dart';

@freezed
sealed class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.state({
    VideoPlayerController? controller,
    Duration? lastPosition,
    String? url,
    @Default([]) List<AnoboyLinksItemModel> links,
  }) = _State;
}
