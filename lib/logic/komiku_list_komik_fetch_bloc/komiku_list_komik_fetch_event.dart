part of 'komiku_list_komik_fetch_bloc.dart';

@freezed
class KomikuListKomikFetchEvent with _$KomikuListKomikFetchEvent {
  const factory KomikuListKomikFetchEvent.started() = _Started;
  const factory KomikuListKomikFetchEvent.loadMore({
    required String tag,
    required String nextLink,
  }) = _LoadMore;
}
