part of 'search_bloc.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started({
    required String currentRouteName,
    required String keyword,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _Started;

  const factory SearchEvent.loadMore({
    required String currentRouteName,
    @Default(MangaProvider.komiku) MangaProvider provider,
  }) = _LoadMore;
}
