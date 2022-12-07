import 'package:freezed_annotation/freezed_annotation.dart';

part 'anoboy_list_model.freezed.dart';
part 'anoboy_list_model.g.dart';

@freezed
class AnoboyListModel with _$AnoboyListModel {
  const factory AnoboyListModel({
    /// Max Page of Anoboy Home Screen or Search
    @JsonKey(name: "max_page") @Default(0) int maxPage,

    /// Next Page Link
    @JsonKey(name: "next_page") String? nextPage,

    /// Previous Page Link
    @JsonKey(name: "prev_page") String? prevPage,

    /// Anime List Data
    @Default([]) List<AnoboyListItemModel> data,
  }) = _AnoboyListModel;

  factory AnoboyListModel.fromJson(Map<String, dynamic> json) =>
      _$AnoboyListModelFromJson(json);
}

@freezed
class AnoboyListItemModel with _$AnoboyListItemModel {
  const factory AnoboyListItemModel({
    /// Anime Title
    @Default("") String title,

    /// Anime parameter used for get anime detail from server
    @Default("") String param,

    /// Anime thumbnail
    @Default("") String thumbnail,

    /// Upload time from anoboy
    @JsonKey(name: 'upload_time') @Default("") String uploadTime,

    /// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
    @JsonKey(name: 'detail_url') @Default("") String detailUrl,
  }) = _AnoboyListItemModel;

  factory AnoboyListItemModel.fromJson(Map<String, dynamic> json) =>
      _$AnoboyListItemModelFromJson(json);
}
