// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    _SettingsModel(
      anoboyAppBarVideo: json['anoboy_app_bar_video'] as bool? ?? false,
      komikReadImageMode:
          json['komik_read_image_mode'] ?? KomikReadImageMode.normal,
    );

Map<String, dynamic> _$SettingsModelToJson(_SettingsModel instance) =>
    <String, dynamic>{
      'anoboy_app_bar_video': instance.anoboyAppBarVideo,
      'komik_read_image_mode': instance.komikReadImageMode,
    };
