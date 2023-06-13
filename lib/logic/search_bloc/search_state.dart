part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.state({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    @Default(KomikuListModel()) KomikuListModel komikResult,
    @Default(AnoboyListModel()) AnoboyListModel anoboyResult,
  }) = _State;
}
