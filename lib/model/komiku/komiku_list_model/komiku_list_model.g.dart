// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komiku_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KomikuListModel _$$_KomikuListModelFromJson(Map<String, dynamic> json) =>
    _$_KomikuListModel(
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  KomikuListItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_KomikuListModelToJson(_$_KomikuListModel instance) =>
    <String, dynamic>{
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_KomikuListItemModel _$$_KomikuListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_KomikuListItemModel(
      title: json['title'] as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      param: json['param'] as String? ?? "",
      detailUrl: json['detail_url'] as String? ?? "",
    );

Map<String, dynamic> _$$_KomikuListItemModelToJson(
        _$_KomikuListItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'param': instance.param,
      'detail_url': instance.detailUrl,
    };
