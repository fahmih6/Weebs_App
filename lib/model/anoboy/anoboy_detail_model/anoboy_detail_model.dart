import 'package:freezed_annotation/freezed_annotation.dart';

part 'anoboy_detail_model.freezed.dart';
part 'anoboy_detail_model.g.dart';

@freezed
class AnoboyDetailModel with _$AnoboyDetailModel {
  const factory AnoboyDetailModel({
    /// Anime Name
    @Default("") String name,

    /// Anime Synopsis
    @Default("") String synopsis,

    /// Thumbnail
    @Default("") String thumbnail,

    /// Episode Navigation if any
    @JsonKey(name: "episode_navigation")
    @Default([])
    List<AnoboyEpisodeNavigationItemModel> episodeNavigations,

    /// Video Embed Links
    @JsonKey(name: "video_embed_links")
    @Default([])
    List<AnoboyLinksItemModel> videoEmbedLinks,

    /// Video Direct Links
    @JsonKey(name: "video_direct_links")
    @Default([])
    List<AnoboyLinksItemModel> videoDirectLinks,

    /// Video Embed Mirror Links
    @JsonKey(name: "video_mirrors")
    @Default([])
    List<AnoboyLinksItemModel> videoEmbedMirrorLinks,

    /// Video Mirrors Direct Link
    @JsonKey(name: 'video_mirrors_direct_link')
    @Default([])
    List<AnoboyLinksItemModel> videoMirrorDirectLinks,
  }) = _AnoboyDetailModel;

  factory AnoboyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AnoboyDetailModelFromJson(json);
}

@freezed
class AnoboyEpisodeNavigationItemModel with _$AnoboyEpisodeNavigationItemModel {
  const factory AnoboyEpisodeNavigationItemModel({
    @JsonKey(name: "nav_link") @Default("") String navLink,
    @JsonKey(name: "nav_name") @Default("") String navName,
  }) = _AnoboyEpisodeNavigationItemModel;

  factory AnoboyEpisodeNavigationItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$AnoboyEpisodeNavigationItemModelFromJson(json);
}

@freezed
class AnoboyLinksItemModel with _$AnoboyLinksItemModel {
  const factory AnoboyLinksItemModel({
    @Default("") String resolution,
    @Default("") String link,
    Map<String, dynamic>? headers,
  }) = _AnoboyLinksItemModel;

  factory AnoboyLinksItemModel.fromJson(Map<String, dynamic> json) =>
      _$AnoboyLinksItemModelFromJson(json);
}
