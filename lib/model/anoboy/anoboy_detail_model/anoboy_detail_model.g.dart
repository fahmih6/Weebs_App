// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anoboy_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnoboyDetailModelImpl _$$AnoboyDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnoboyDetailModelImpl(
      name: json['name'] as String? ?? "",
      synopsis: json['synopsis'] as String? ?? "",
      episodeNavigations: (json['episode_navigation'] as List<dynamic>?)
              ?.map((e) => AnoboyEpisodeNavigationItemModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoEmbedLinks: (json['video_embed_links'] as List<dynamic>?)
              ?.map((e) =>
                  AnoboyLinksItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoDirectLinks: (json['video_direct_links'] as List<dynamic>?)
              ?.map((e) =>
                  AnoboyLinksItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoEmbedMirrorLinks: (json['video_mirrors'] as List<dynamic>?)
              ?.map((e) =>
                  AnoboyLinksItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoMirrorDirectLinks:
          (json['video_mirrors_direct_link'] as List<dynamic>?)
                  ?.map((e) =>
                      AnoboyLinksItemModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$AnoboyDetailModelImplToJson(
        _$AnoboyDetailModelImpl instance) =>
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
      'video_mirrors_direct_link':
          instance.videoMirrorDirectLinks.map((e) => e.toJson()).toList(),
    };

_$AnoboyEpisodeNavigationItemModelImpl
    _$$AnoboyEpisodeNavigationItemModelImplFromJson(
            Map<String, dynamic> json) =>
        _$AnoboyEpisodeNavigationItemModelImpl(
          navLink: json['nav_link'] as String? ?? "",
          navName: json['nav_name'] as String? ?? "",
        );

Map<String, dynamic> _$$AnoboyEpisodeNavigationItemModelImplToJson(
        _$AnoboyEpisodeNavigationItemModelImpl instance) =>
    <String, dynamic>{
      'nav_link': instance.navLink,
      'nav_name': instance.navName,
    };

_$AnoboyLinksItemModelImpl _$$AnoboyLinksItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnoboyLinksItemModelImpl(
      resolution: json['resolution'] as String? ?? "",
      link: json['link'] as String? ?? "",
      headers: json['headers'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AnoboyLinksItemModelImplToJson(
        _$AnoboyLinksItemModelImpl instance) =>
    <String, dynamic>{
      'resolution': instance.resolution,
      'link': instance.link,
      'headers': instance.headers,
    };
