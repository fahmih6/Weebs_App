part of 'komik_list_fetch_bloc.dart';

@freezed
sealed class KomikListFetchState with _$KomikListFetchState {
  const factory KomikListFetchState.initial() = _Initial;
  const factory KomikListFetchState.loading() = _Loading;
  const factory KomikListFetchState.completed({
    required KomikuListModel recommendationList,
    @Default(false) bool isLoadMore,
    String? errorMsg,
  }) = _Completed;
}
