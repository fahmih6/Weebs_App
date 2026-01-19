part of 'favourites_bloc.dart';

@freezed
sealed class FavouritesState with _$FavouritesState {
  const factory FavouritesState.state({
    @Default([]) List<AnoboyDetailModel> anoboyList,
    @Default([]) List<KomikuDetailModel> komikuList,
    @Default([]) List<KomikuDetailModel> komikcastList,
  }) = _State;
}
