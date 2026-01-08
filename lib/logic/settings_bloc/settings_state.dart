part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.state({
    @Default(SettingsModel()) SettingsModel settingsData,
  }) = _State;
}
