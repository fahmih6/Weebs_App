import 'package:freezed_annotation/freezed_annotation.dart';

part 'komiku_list_model.freezed.dart';
part 'komiku_list_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class KomikuListModel with _$KomikuListModel {
  const factory KomikuListModel({
    @JsonKey(name: "next_page") String? nextPage,
    @JsonKey(name: "prev_page") String? prevPage,
    @Default([]) List<KomikuListItemModel> data,
  }) = _KomikuListModel;

  factory KomikuListModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuListModelFromJson(json);
}

@freezed
class KomikuListItemModel with _$KomikuListItemModel {
  const factory KomikuListItemModel({
    /// Manga Title
    @Default("") String title,

    /// Manga Thumbnail
    @Default("") String thumbnail,

    /// Manga Param
    @Default("") String param,

    /// Manga Latest Chapter
    @JsonKey(name: "latest_chapter") @Default("") String latestChapter,

    /// Direct detail url
    @JsonKey(name: "detail_url") @Default("") String detailUrl,
  }) = _KomikuListItemModel;

  factory KomikuListItemModel.fromJson(Map<String, dynamic> json) =>
      _$KomikuListItemModelFromJson(json);
}
