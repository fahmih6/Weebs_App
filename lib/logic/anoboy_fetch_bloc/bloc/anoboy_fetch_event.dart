part of 'anoboy_fetch_bloc.dart';

@freezed
class AnoboyFetchEvent with _$AnoboyFetchEvent {
  const factory AnoboyFetchEvent.started() = _Started;
}