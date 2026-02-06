// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komiku_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KomikuDetailModel _$KomikuDetailModelFromJson(Map<String, dynamic> json) =>
    _KomikuDetailModel(
      title: json['title'] as String? ?? "",
      param: _readParam(json, 'param') as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      synopsis: json['synopsis'] as String? ?? "",
      chapters:
          (json['chapters'] as List<dynamic>?)
              ?.map(
                (e) => KomikuDetailChapterModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      type: json['type'] as String? ?? "",
      rating: _readString(json, 'rating') as String? ?? "",
    );

Map<String, dynamic> _$KomikuDetailModelToJson(_KomikuDetailModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'param': instance.param,
      'thumbnail': instance.thumbnail,
      'genre': instance.genre,
      'synopsis': instance.synopsis,
      'chapters': instance.chapters.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'rating': instance.rating,
    };

_KomikuDetailChapterModel _$KomikuDetailChapterModelFromJson(
  Map<String, dynamic> json,
) => _KomikuDetailChapterModel(
  chapter: _readString(json, 'chapter') as String? ?? "",
  param: _readParam(json, 'param') as String? ?? "",
  release: json['release'] as String? ?? "",
  detailUrl: json['detail_url'] as String? ?? "",
  isRead: json['isRead'] as bool? ?? false,
);

Map<String, dynamic> _$KomikuDetailChapterModelToJson(
  _KomikuDetailChapterModel instance,
) => <String, dynamic>{
  'chapter': instance.chapter,
  'param': instance.param,
  'release': instance.release,
  'detail_url': instance.detailUrl,
  'isRead': instance.isRead,
};

_KomikuChapterFetchModel _$KomikuChapterFetchModelFromJson(
  Map<String, dynamic> json,
) => _KomikuChapterFetchModel(
  chapterParam: json['chapter_param'] as String? ?? "",
  chapterUrls:
      (json['chapter_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$KomikuChapterFetchModelToJson(
  _KomikuChapterFetchModel instance,
) => <String, dynamic>{
  'chapter_param': instance.chapterParam,
  'chapter_urls': instance.chapterUrls,
};
