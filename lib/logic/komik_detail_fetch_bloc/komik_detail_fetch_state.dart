part of 'komik_detail_fetch_bloc.dart';

@freezed
class KomikDetailFetchState with _$KomikDetailFetchState {
  const factory KomikDetailFetchState.initial() = _Initial;
  const factory KomikDetailFetchState.loading() = _Loading;
  const factory KomikDetailFetchState.completed({
    required KomikuDetailModel komikuDetailModel,
    @Default("") String errorMessage,
  }) = _Completed;
}
