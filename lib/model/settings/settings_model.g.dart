// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      anoboyAppBarVideo: json['anoboy_app_bar_video'] as bool? ?? false,
      komikReadImageMode:
          json['komik_read_image_mode'] ?? KomikReadImageMode.normal,
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'anoboy_app_bar_video': instance.anoboyAppBarVideo,
      'komik_read_image_mode': instance.komikReadImageMode,
    };
