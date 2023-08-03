part of 'komiku_detail_fetch_bloc.dart';

@freezed
class KomikuDetailFetchEvent with _$KomikuDetailFetchEvent {
  const factory KomikuDetailFetchEvent.started({required String param}) =
      _Started;
}
