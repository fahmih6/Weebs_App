part of 'komiku_detail_fetch_bloc.dart';

@freezed
class KomikuDetailFetchState with _$KomikuDetailFetchState {
  const factory KomikuDetailFetchState.initial() = _Initial;
  const factory KomikuDetailFetchState.loading() = _Loading;
  const factory KomikuDetailFetchState.completed({
    required KomikuDetailModel komikuDetailModel,
    @Default("") String errorMessage,
  }) = _Completed;
}
