import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

enum KomikReadImageMode {
  normal,
  fitHeight,
  fillWidth;

  String toJson() => name;
  static KomikReadImageMode fromJson(String json) => values.byName(json);
}

@freezed
class SettingsModel with _$SettingsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SettingsModel({
    /// Anoboy App Bar Video Playback.
    @Default(false) bool anoboyAppBarVideo,

    /// Komik Read Image Mode
    @Default(KomikReadImageMode.normal) komikReadImageMode,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
