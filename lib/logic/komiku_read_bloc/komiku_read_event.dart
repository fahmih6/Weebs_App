part of 'komiku_read_bloc.dart';

@freezed
class KomikuReadEvent with _$KomikuReadEvent {
  const factory KomikuReadEvent.markAsRead({
    required KomikuDetailModel komikuData,
    required String chapterParam,
  }) = _MarkAsRead;
}
