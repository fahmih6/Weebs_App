part of 'komik_detail_fetch_bloc.dart';

@freezed
sealed class KomikDetailFetchEvent with _$KomikDetailFetchEvent {
  const factory KomikDetailFetchEvent.started({
    required String param,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _Started;

  const factory KomikDetailFetchEvent.read({
    required KomikuDetailChapterModel item,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _Read;
}
