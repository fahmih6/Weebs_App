// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komiku_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KomikuListModelImpl _$$KomikuListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KomikuListModelImpl(
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  KomikuListItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$KomikuListModelImplToJson(
        _$KomikuListModelImpl instance) =>
    <String, dynamic>{
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$KomikuListItemModelImpl _$$KomikuListItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KomikuListItemModelImpl(
      title: json['title'] as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      param: json['param'] as String? ?? "",
      description: json['description'] as String? ?? "",
      latestChapter: json['latest_chapter'] as String? ?? "",
      detailUrl: json['detail_url'] as String? ?? "",
    );

Map<String, dynamic> _$$KomikuListItemModelImplToJson(
        _$KomikuListItemModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'param': instance.param,
      'description': instance.description,
      'latest_chapter': instance.latestChapter,
      'detail_url': instance.detailUrl,
    };
