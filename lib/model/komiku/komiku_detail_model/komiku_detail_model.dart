import 'package:freezed_annotation/freezed_annotation.dart';

part 'komiku_detail_model.freezed.dart';
part 'komiku_detail_model.g.dart';

@freezed
class KomikuDetailModel with _$KomikuDetailModel {
  const factory KomikuDetailModel({
    @Default("") String title,
    @Default("") String param,
    @Default("") String thumbnail,
    @Default([]) List<String> genre,
    @Default("") String synopsis,
    @Default([]) List<KomikuDetailChapterModel> chapters,
  }) = _KomikuDetailModel;

  factory KomikuDetailModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuDetailModelFromJson(json);
}

@freezed
class KomikuDetailChapterModel with _$KomikuDetailChapterModel {
  const factory KomikuDetailChapterModel({
    /// Manga chapter number
    @Default("") String chapter,

    /// Manga chapter param
    @Default("") String param,

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
class KomikuChapterFetchModel with _$KomikuChapterFetchModel {
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
