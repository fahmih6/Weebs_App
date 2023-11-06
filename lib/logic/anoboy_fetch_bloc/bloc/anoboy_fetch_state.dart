part of 'anoboy_fetch_bloc.dart';

@freezed
class AnoboyFetchState with _$AnoboyFetchState {
  const factory AnoboyFetchState.initial() = _Initial;
  const factory AnoboyFetchState.loading({required AnoboyListModel animeList}) =
      _Loading;
  const factory AnoboyFetchState.completed({
    required AnoboyListModel animeList,
    @Default(false) bool isLoadMore,
    String? errorMsg,
  }) = _Completed;
}
