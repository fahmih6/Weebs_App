part of 'anoboy_detail_fetch_bloc.dart';

@freezed
class AnoboyDetailFetchEvent with _$AnoboyDetailFetchEvent {
  const factory AnoboyDetailFetchEvent.started({required String param}) =
      _Started;
}
