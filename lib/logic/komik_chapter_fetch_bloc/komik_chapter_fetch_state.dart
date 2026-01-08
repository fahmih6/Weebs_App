part of 'komik_chapter_fetch_bloc.dart';

@freezed
class KomikChapterFetchState with _$KomikChapterFetchState {
  const factory KomikChapterFetchState.initial() = _Initial;
  const factory KomikChapterFetchState.loading() = _Loading;
  const factory KomikChapterFetchState.completed({
    @Default(false) bool isLoadMore,
    @Default("") String errorMessage,
    @Default([]) List<KomikuChapterFetchModel> chapterData,
  }) = _Completed;
}
