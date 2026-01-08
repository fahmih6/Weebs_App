part of 'komik_chapter_fetch_bloc.dart';

@freezed
sealed class KomikChapterFetchEvent with _$KomikChapterFetchEvent {
  const factory KomikChapterFetchEvent.started({
    required String param,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _Started;
}
