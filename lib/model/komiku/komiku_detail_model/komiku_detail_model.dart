import 'package:freezed_annotation/freezed_annotation.dart';

part 'komiku_detail_model.freezed.dart';
part 'komiku_detail_model.g.dart';

@freezed
sealed class KomikuDetailModel with _$KomikuDetailModel {
  const factory KomikuDetailModel({
    @Default("") String title,
    @JsonKey(readValue: _readParam) @Default("") String param,
    @Default("") String thumbnail,
    @Default([]) List<String> genre,
    @Default("") String synopsis,
    @Default([]) List<KomikuDetailChapterModel> chapters,
    @Default("") String type,
    @Default("") String rating,
  }) = _KomikuDetailModel;

  factory KomikuDetailModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuDetailModelFromJson(json);
}

@freezed
sealed class KomikuDetailChapterModel with _$KomikuDetailChapterModel {
  const factory KomikuDetailChapterModel({
    /// Manga chapter number
    @Default("") String chapter,

    /// Manga chapter param
    @JsonKey(readValue: _readParam) @Default("") String param,

    /// Manga chapter release date
    @Default("") String release,

    /// Manga chapter detail URL
    @JsonKey(name: "detail_url") @Default("") String detailUrl,

    /// Is Read
    @Default(false) bool isRead,
  }) = _KomikuDetailChapterModel;

  factory KomikuDetailChapterModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuDetailChapterModelFromJson(json);
}

@freezed
sealed class KomikuChapterFetchModel with _$KomikuChapterFetchModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory KomikuChapterFetchModel({
    /// Chapter Param
    @Default("") String chapterParam,

    /// Chapter URls
    @Default([]) List<String> chapterUrls,
  }) = _KomikuChapterFetchModel;

  factory KomikuChapterFetchModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuChapterFetchModelFromJson(json);
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
