part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.state({
    @Default([]) List<AnoboyDetailModel> anoboyList,
    @Default([]) List<KomikuDetailModel> komikuList,
  }) = _State;
}
