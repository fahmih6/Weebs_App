part of 'komiku_chapter_fetch_bloc.dart';

@freezed
class KomikuChapterFetchState with _$KomikuChapterFetchState {
  const factory KomikuChapterFetchState.initial() = _Initial;
  const factory KomikuChapterFetchState.loading() = _Loading;
  const factory KomikuChapterFetchState.completed({
    @Default(false) bool isLoadMore,
    @Default("") String errorMessage,
    @Default([]) List<KomikuChapterFetchModel> chapterData,
  }) = _Completed;
}
