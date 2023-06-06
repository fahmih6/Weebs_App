part of 'komiku_list_komik_fetch_bloc.dart';

@freezed
class KomikuListKomikFetchState with _$KomikuListKomikFetchState {
  const factory KomikuListKomikFetchState.initial() = _Initial;
  const factory KomikuListKomikFetchState.loading() = _Loading;
  const factory KomikuListKomikFetchState.completed({
    required KomikuListModel recommendationList,
    required KomikuListModel hotList,
    @Default(false) bool isLoadMore,
    String? errorMsg,
  }) = _Completed;
}
