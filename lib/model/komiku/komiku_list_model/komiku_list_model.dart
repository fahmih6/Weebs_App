import 'package:freezed_annotation/freezed_annotation.dart';

part 'komiku_list_model.freezed.dart';
part 'komiku_list_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
sealed class KomikuListModel with _$KomikuListModel {
  const factory KomikuListModel({
    @JsonKey(name: "next_page") String? nextPage,
    @JsonKey(name: "prev_page") String? prevPage,
    @Default([]) List<KomikuListItemModel> data,
  }) = _KomikuListModel;

  factory KomikuListModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuListModelFromJson(json);
}

@freezed
sealed class KomikuListItemModel with _$KomikuListItemModel {
  const factory KomikuListItemModel({
    /// Manga Title
    @Default("") String title,

    /// Manga Thumbnail
    @Default("") String thumbnail,

    /// Manga Param
    @JsonKey(readValue: _readParam) @Default("") String param,

    /// Description
    @Default("") String description,

    /// Manga Latest Chapter
    @JsonKey(name: "latest_chapter") @Default("") String latestChapter,

    /// Direct detail url
    @JsonKey(name: "detail_url") @Default("") String detailUrl,

    /// Manga Type
    @Default("") String type,

    /// Manga Rating
    @Default("") String rating,
  }) = _KomikuListItemModel;

  factory KomikuListItemModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuListItemModelFromJson(json);
}

Object? _readParam(Map<dynamic, dynamic> json, String key) {
  final param = json['param'] ?? json['slug'];
  if (param != null && param.toString().isNotEmpty) return param;

  final detailUrl = json['detail_url'];
  if (detailUrl != null && detailUrl is String && detailUrl.isNotEmpty) {
    final parts = detailUrl
        .split('/')
        .where((element) => element.isNotEmpty)
        .toList();
    if (parts.isNotEmpty) {
      return parts.last;
    }
  }
  return null;
}
