part of 'anoboy_detail_fetch_bloc.dart';

@freezed
class AnoboyDetailFetchState with _$AnoboyDetailFetchState {
  const factory AnoboyDetailFetchState.initial() = _Initial;
  const factory AnoboyDetailFetchState.loading() = _Loading;
  const factory AnoboyDetailFetchState.completed({
    required AnoboyDetailModel anoboyDetailModel,

    /// Fetched from Episode Navigations
    @Default([]) List<AnoboyDetailModel> relatedVideos,
    @Default("") String errorMessage,
  }) = _Completed;
}
