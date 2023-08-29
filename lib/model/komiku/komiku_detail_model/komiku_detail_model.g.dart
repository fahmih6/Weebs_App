// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komiku_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KomikuDetailModel _$$_KomikuDetailModelFromJson(Map<String, dynamic> json) =>
    _$_KomikuDetailModel(
      title: json['title'] as String? ?? "",
      param: json['param'] as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      synopsis: json['synopsis'] as String? ?? "",
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) =>
                  KomikuDetailChapterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_KomikuDetailModelToJson(
        _$_KomikuDetailModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'param': instance.param,
      'thumbnail': instance.thumbnail,
      'genre': instance.genre,
      'synopsis': instance.synopsis,
      'chapters': instance.chapters.map((e) => e.toJson()).toList(),
    };

_$_KomikuDetailChapterModel _$$_KomikuDetailChapterModelFromJson(
        Map<String, dynamic> json) =>
    _$_KomikuDetailChapterModel(
      chapter: json['chapter'] as String? ?? "",
      param: json['param'] as String? ?? "",
      release: json['release'] as String? ?? "",
      detailUrl: json['detail_url'] as String? ?? "",
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$_KomikuDetailChapterModelToJson(
        _$_KomikuDetailChapterModel instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'param': instance.param,
      'release': instance.release,
      'detail_url': instance.detailUrl,
      'isRead': instance.isRead,
    };

_$_KomikuChapterFetchModel _$$_KomikuChapterFetchModelFromJson(
        Map<String, dynamic> json) =>
    _$_KomikuChapterFetchModel(
      chapterParam: json['chapter_param'] as String? ?? "",
      chapterUrls: (json['chapter_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_KomikuChapterFetchModelToJson(
        _$_KomikuChapterFetchModel instance) =>
    <String, dynamic>{
      'chapter_param': instance.chapterParam,
      'chapter_urls': instance.chapterUrls,
    };
