// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anoboy_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnoboyListModelImpl _$$AnoboyListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnoboyListModelImpl(
      maxPage: json['max_page'] as int? ?? 0,
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  AnoboyListItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AnoboyListModelImplToJson(
        _$AnoboyListModelImpl instance) =>
    <String, dynamic>{
      'max_page': instance.maxPage,
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$AnoboyListItemModelImpl _$$AnoboyListItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnoboyListItemModelImpl(
      title: json['title'] as String? ?? "",
      param: json['param'] as String? ?? "",
      thumbnail: json['thumbnail'] as String? ?? "",
      uploadTime: json['upload_time'] as String? ?? "",
      detailUrl: json['detail_url'] as String? ?? "",
    );

Map<String, dynamic> _$$AnoboyListItemModelImplToJson(
        _$AnoboyListItemModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'param': instance.param,
      'thumbnail': instance.thumbnail,
      'upload_time': instance.uploadTime,
      'detail_url': instance.detailUrl,
    };
