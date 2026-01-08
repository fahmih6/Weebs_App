part of 'komik_list_fetch_bloc.dart';

@freezed
sealed class KomikListFetchEvent with _$KomikListFetchEvent {
  const factory KomikListFetchEvent.started({
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _Started;
  const factory KomikListFetchEvent.loadMore({
    required String tag,
    required String nextLink,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _LoadMore;
}
