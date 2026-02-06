// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komiku_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KomikuListModel _$KomikuListModelFromJson(Map<String, dynamic> json) =>
    _KomikuListModel(
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => KomikuListItemModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$KomikuListModelToJson(_KomikuListModel instance) =>
    <String, dynamic>{
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_KomikuListItemModel _$KomikuListItemModelFromJson(Map<String, dynamic> json) =>
    _KomikuListItemModel(
      title: json['title'] as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      param: _readParam(json, 'param') as String? ?? "",
      description: json['description'] as String? ?? "",
      latestChapter: _readString(json, 'latest_chapter') as String? ?? "",
      detailUrl: json['detail_url'] as String? ?? "",
      type: json['type'] as String? ?? "",
      rating: _readString(json, 'rating') as String? ?? "",
    );

Map<String, dynamic> _$KomikuListItemModelToJson(
  _KomikuListItemModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'thumbnail': instance.thumbnail,
  'param': instance.param,
  'description': instance.description,
  'latest_chapter': instance.latestChapter,
  'detail_url': instance.detailUrl,
  'type': instance.type,
  'rating': instance.rating,
};
