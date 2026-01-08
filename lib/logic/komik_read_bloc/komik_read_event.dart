part of 'komik_read_bloc.dart';

@freezed
sealed class KomikReadEvent with _$KomikReadEvent {
  const factory KomikReadEvent.markAsRead({
    required KomikuDetailModel komikuData,
    required String chapterParam,
  }) = _MarkAsRead;
}
