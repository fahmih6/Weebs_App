part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started({
    bool? anoboyAppBarVideo,
    KomikReadImageMode? komikReadImageMode,
  }) = _Started;
}
