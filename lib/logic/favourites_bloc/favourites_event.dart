part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.added({
    AnoboyDetailModel? anoboyData,
    KomikuDetailModel? komikuData,
  }) = _Added;

  const factory FavouritesEvent.removed({
    AnoboyDetailModel? anoboyData,
    KomikuDetailModel? komikuData,
  }) = _Removed;

  const factory FavouritesEvent.edited({
    AnoboyDetailModel? anoboyData,
    KomikuDetailModel? komikuData,
  }) = _Edited;
}
