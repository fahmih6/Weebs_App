// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anoboy_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnoboyDetailModel _$$_AnoboyDetailModelFromJson(Map<String, dynamic> json) =>
    _$_AnoboyDetailModel(
      name: json['name'] as String? ?? "",
      synopsis: json['synopsis'] as String? ?? "",
      episodeNavigations: (json['episode_navigation'] as List<dynamic>?)
              ?.map((e) => AnoboyEpisodeNavigationItemModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoEmbedLinks: (json['video_embed_links'] as List<dynamic>?)
              ?.map((e) => AnoboyLinksItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoDirectLinks: (json['video_direct_links'] as List<dynamic>?)
              ?.map((e) => AnoboyLinksItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoEmbedMirrorLinks: (json['video_mirrors'] as List<dynamic>?)
              ?.map((e) => AnoboyLinksItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AnoboyDetailModelToJson(
        _$_AnoboyDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'synopsis': instance.synopsis,
      'episode_navigation':
          instance.episodeNavigations.map((e) => e.toJson()).toList(),
      'video_embed_links':
          instance.videoEmbedLinks.map((e) => e.toJson()).toList(),
      'video_direct_links':
          instance.videoDirectLinks.map((e) => e.toJson()).toList(),
      'video_mirrors':
          instance.videoEmbedMirrorLinks.map((e) => e.toJson()).toList(),
    };

_$_AnoboyEpisodeNavigationItemModel
    _$$_AnoboyEpisodeNavigationItemModelFromJson(Map<String, dynamic> json) =>
        _$_AnoboyEpisodeNavigationItemModel(
          navLink: json['nav_link'] as String? ?? "",
          navName: json['nav_name'] as String? ?? "",
        );

Map<String, dynamic> _$$_AnoboyEpisodeNavigationItemModelToJson(
        _$_AnoboyEpisodeNavigationItemModel instance) =>
    <String, dynamic>{
      'nav_link': instance.navLink,
      'nav_name': instance.navName,
    };

_$_AnoboyLinksItem _$$_AnoboyLinksItemFromJson(Map<String, dynamic> json) =>
    _$_AnoboyLinksItem(
      resolution: json['resolution'] as String? ?? "",
      link: json['link'] as String? ?? "",
    );

Map<String, dynamic> _$$_AnoboyLinksItemToJson(_$_AnoboyLinksItem instance) =>
    <String, dynamic>{
      'resolution': instance.resolution,
      'link': instance.link,
    };
