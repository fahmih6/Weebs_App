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

    /// Episode Navigation if any
    @JsonKey(name: "episode_navigation")
    @Default([])
        List<AnoboyEpisodeNavigationItemModel> episodeNavigations,

    /// Video Embed Links
    @JsonKey(name: "video_embed_links")
    @Default([])
        List<AnoboyLinksItem> videoEmbedLinks,

    /// Video Direct Links
    @JsonKey(name: "video_direct_links")
    @Default([])
        List<AnoboyLinksItem> videoDirectLinks,

    /// Video Embed Mirror Links
    @JsonKey(name: "video_mirrors")
    @Default([])
        List<AnoboyLinksItem> videoEmbedMirrorLinks,
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
class AnoboyLinksItem with _$AnoboyLinksItem {
  const factory AnoboyLinksItem({
    @Default("") String resolution,
    @Default("") String link,
  }) = _AnoboyLinksItem;

  factory AnoboyLinksItem.fromJson(Map<String, dynamic> json) =>
      _$AnoboyLinksItemFromJson(json);
}
