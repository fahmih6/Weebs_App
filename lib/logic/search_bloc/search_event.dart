part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started({
    required String keyword,
  }) = _Started;

  const factory SearchEvent.loadMore() = _LoadMore;
}
