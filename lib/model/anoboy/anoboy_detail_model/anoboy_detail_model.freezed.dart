// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnoboyDetailModel _$AnoboyDetailModelFromJson(Map<String, dynamic> json) {
  return _AnoboyDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AnoboyDetailModel {
  /// Anime Name
  String get name => throw _privateConstructorUsedError;

  /// Anime Synopsis
  String get synopsis => throw _privateConstructorUsedError;

  /// Episode Navigation if any
  @JsonKey(name: "episode_navigation")
  List<AnoboyEpisodeNavigationItemModel> get episodeNavigations =>
      throw _privateConstructorUsedError;

  /// Video Embed Links
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItem> get videoEmbedLinks =>
      throw _privateConstructorUsedError;

  /// Video Direct Links
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItem> get videoDirectLinks =>
      throw _privateConstructorUsedError;

  /// Video Embed Mirror Links
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItem> get videoEmbedMirrorLinks =>
      throw _privateConstructorUsedError;

  /// Video Mirrors Direct Link
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItem> get videoMirrorDirectLinks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyDetailModelCopyWith<AnoboyDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyDetailModelCopyWith<$Res> {
  factory $AnoboyDetailModelCopyWith(
          AnoboyDetailModel value, $Res Function(AnoboyDetailModel) then) =
      _$AnoboyDetailModelCopyWithImpl<$Res, AnoboyDetailModel>;
  @useResult
  $Res call(
      {String name,
      String synopsis,
      @JsonKey(name: "episode_navigation")
          List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
      @JsonKey(name: "video_embed_links")
          List<AnoboyLinksItem> videoEmbedLinks,
      @JsonKey(name: "video_direct_links")
          List<AnoboyLinksItem> videoDirectLinks,
      @JsonKey(name: "video_mirrors")
          List<AnoboyLinksItem> videoEmbedMirrorLinks,
      @JsonKey(name: 'video_mirrors_direct_link')
          List<AnoboyLinksItem> videoMirrorDirectLinks});
}

/// @nodoc
class _$AnoboyDetailModelCopyWithImpl<$Res, $Val extends AnoboyDetailModel>
    implements $AnoboyDetailModelCopyWith<$Res> {
  _$AnoboyDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? synopsis = null,
    Object? episodeNavigations = null,
    Object? videoEmbedLinks = null,
    Object? videoDirectLinks = null,
    Object? videoEmbedMirrorLinks = null,
    Object? videoMirrorDirectLinks = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNavigations: null == episodeNavigations
          ? _value.episodeNavigations
          : episodeNavigations // ignore: cast_nullable_to_non_nullable
              as List<AnoboyEpisodeNavigationItemModel>,
      videoEmbedLinks: null == videoEmbedLinks
          ? _value.videoEmbedLinks
          : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoDirectLinks: null == videoDirectLinks
          ? _value.videoDirectLinks
          : videoDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoEmbedMirrorLinks: null == videoEmbedMirrorLinks
          ? _value.videoEmbedMirrorLinks
          : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoMirrorDirectLinks: null == videoMirrorDirectLinks
          ? _value.videoMirrorDirectLinks
          : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnoboyDetailModelCopyWith<$Res>
    implements $AnoboyDetailModelCopyWith<$Res> {
  factory _$$_AnoboyDetailModelCopyWith(_$_AnoboyDetailModel value,
          $Res Function(_$_AnoboyDetailModel) then) =
      __$$_AnoboyDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String synopsis,
      @JsonKey(name: "episode_navigation")
          List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
      @JsonKey(name: "video_embed_links")
          List<AnoboyLinksItem> videoEmbedLinks,
      @JsonKey(name: "video_direct_links")
          List<AnoboyLinksItem> videoDirectLinks,
      @JsonKey(name: "video_mirrors")
          List<AnoboyLinksItem> videoEmbedMirrorLinks,
      @JsonKey(name: 'video_mirrors_direct_link')
          List<AnoboyLinksItem> videoMirrorDirectLinks});
}

/// @nodoc
class __$$_AnoboyDetailModelCopyWithImpl<$Res>
    extends _$AnoboyDetailModelCopyWithImpl<$Res, _$_AnoboyDetailModel>
    implements _$$_AnoboyDetailModelCopyWith<$Res> {
  __$$_AnoboyDetailModelCopyWithImpl(
      _$_AnoboyDetailModel _value, $Res Function(_$_AnoboyDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? synopsis = null,
    Object? episodeNavigations = null,
    Object? videoEmbedLinks = null,
    Object? videoDirectLinks = null,
    Object? videoEmbedMirrorLinks = null,
    Object? videoMirrorDirectLinks = null,
  }) {
    return _then(_$_AnoboyDetailModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNavigations: null == episodeNavigations
          ? _value._episodeNavigations
          : episodeNavigations // ignore: cast_nullable_to_non_nullable
              as List<AnoboyEpisodeNavigationItemModel>,
      videoEmbedLinks: null == videoEmbedLinks
          ? _value._videoEmbedLinks
          : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoDirectLinks: null == videoDirectLinks
          ? _value._videoDirectLinks
          : videoDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoEmbedMirrorLinks: null == videoEmbedMirrorLinks
          ? _value._videoEmbedMirrorLinks
          : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
      videoMirrorDirectLinks: null == videoMirrorDirectLinks
          ? _value._videoMirrorDirectLinks
          : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnoboyDetailModel implements _AnoboyDetailModel {
  const _$_AnoboyDetailModel(
      {this.name = "",
      this.synopsis = "",
      @JsonKey(name: "episode_navigation")
          final List<AnoboyEpisodeNavigationItemModel>
              episodeNavigations = const [],
      @JsonKey(name: "video_embed_links")
          final List<AnoboyLinksItem> videoEmbedLinks = const [],
      @JsonKey(name: "video_direct_links")
          final List<AnoboyLinksItem> videoDirectLinks = const [],
      @JsonKey(name: "video_mirrors")
          final List<AnoboyLinksItem> videoEmbedMirrorLinks = const [],
      @JsonKey(name: 'video_mirrors_direct_link')
          final List<AnoboyLinksItem> videoMirrorDirectLinks = const []})
      : _episodeNavigations = episodeNavigations,
        _videoEmbedLinks = videoEmbedLinks,
        _videoDirectLinks = videoDirectLinks,
        _videoEmbedMirrorLinks = videoEmbedMirrorLinks,
        _videoMirrorDirectLinks = videoMirrorDirectLinks;

  factory _$_AnoboyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnoboyDetailModelFromJson(json);

  /// Anime Name
  @override
  @JsonKey()
  final String name;

  /// Anime Synopsis
  @override
  @JsonKey()
  final String synopsis;

  /// Episode Navigation if any
  final List<AnoboyEpisodeNavigationItemModel> _episodeNavigations;

  /// Episode Navigation if any
  @override
  @JsonKey(name: "episode_navigation")
  List<AnoboyEpisodeNavigationItemModel> get episodeNavigations {
    if (_episodeNavigations is EqualUnmodifiableListView)
      return _episodeNavigations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeNavigations);
  }

  /// Video Embed Links
  final List<AnoboyLinksItem> _videoEmbedLinks;

  /// Video Embed Links
  @override
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItem> get videoEmbedLinks {
    if (_videoEmbedLinks is EqualUnmodifiableListView) return _videoEmbedLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoEmbedLinks);
  }

  /// Video Direct Links
  final List<AnoboyLinksItem> _videoDirectLinks;

  /// Video Direct Links
  @override
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItem> get videoDirectLinks {
    if (_videoDirectLinks is EqualUnmodifiableListView)
      return _videoDirectLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoDirectLinks);
  }

  /// Video Embed Mirror Links
  final List<AnoboyLinksItem> _videoEmbedMirrorLinks;

  /// Video Embed Mirror Links
  @override
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItem> get videoEmbedMirrorLinks {
    if (_videoEmbedMirrorLinks is EqualUnmodifiableListView)
      return _videoEmbedMirrorLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoEmbedMirrorLinks);
  }

  /// Video Mirrors Direct Link
  final List<AnoboyLinksItem> _videoMirrorDirectLinks;

  /// Video Mirrors Direct Link
  @override
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItem> get videoMirrorDirectLinks {
    if (_videoMirrorDirectLinks is EqualUnmodifiableListView)
      return _videoMirrorDirectLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoMirrorDirectLinks);
  }

  @override
  String toString() {
    return 'AnoboyDetailModel(name: $name, synopsis: $synopsis, episodeNavigations: $episodeNavigations, videoEmbedLinks: $videoEmbedLinks, videoDirectLinks: $videoDirectLinks, videoEmbedMirrorLinks: $videoEmbedMirrorLinks, videoMirrorDirectLinks: $videoMirrorDirectLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnoboyDetailModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            const DeepCollectionEquality()
                .equals(other._episodeNavigations, _episodeNavigations) &&
            const DeepCollectionEquality()
                .equals(other._videoEmbedLinks, _videoEmbedLinks) &&
            const DeepCollectionEquality()
                .equals(other._videoDirectLinks, _videoDirectLinks) &&
            const DeepCollectionEquality()
                .equals(other._videoEmbedMirrorLinks, _videoEmbedMirrorLinks) &&
            const DeepCollectionEquality().equals(
                other._videoMirrorDirectLinks, _videoMirrorDirectLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      synopsis,
      const DeepCollectionEquality().hash(_episodeNavigations),
      const DeepCollectionEquality().hash(_videoEmbedLinks),
      const DeepCollectionEquality().hash(_videoDirectLinks),
      const DeepCollectionEquality().hash(_videoEmbedMirrorLinks),
      const DeepCollectionEquality().hash(_videoMirrorDirectLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnoboyDetailModelCopyWith<_$_AnoboyDetailModel> get copyWith =>
      __$$_AnoboyDetailModelCopyWithImpl<_$_AnoboyDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnoboyDetailModelToJson(
      this,
    );
  }
}

abstract class _AnoboyDetailModel implements AnoboyDetailModel {
  const factory _AnoboyDetailModel(
          {final String name,
          final String synopsis,
          @JsonKey(name: "episode_navigation")
              final List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
          @JsonKey(name: "video_embed_links")
              final List<AnoboyLinksItem> videoEmbedLinks,
          @JsonKey(name: "video_direct_links")
              final List<AnoboyLinksItem> videoDirectLinks,
          @JsonKey(name: "video_mirrors")
              final List<AnoboyLinksItem> videoEmbedMirrorLinks,
          @JsonKey(name: 'video_mirrors_direct_link')
              final List<AnoboyLinksItem> videoMirrorDirectLinks}) =
      _$_AnoboyDetailModel;

  factory _AnoboyDetailModel.fromJson(Map<String, dynamic> json) =
      _$_AnoboyDetailModel.fromJson;

  @override

  /// Anime Name
  String get name;
  @override

  /// Anime Synopsis
  String get synopsis;
  @override

  /// Episode Navigation if any
  @JsonKey(name: "episode_navigation")
  List<AnoboyEpisodeNavigationItemModel> get episodeNavigations;
  @override

  /// Video Embed Links
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItem> get videoEmbedLinks;
  @override

  /// Video Direct Links
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItem> get videoDirectLinks;
  @override

  /// Video Embed Mirror Links
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItem> get videoEmbedMirrorLinks;
  @override

  /// Video Mirrors Direct Link
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItem> get videoMirrorDirectLinks;
  @override
  @JsonKey(ignore: true)
  _$$_AnoboyDetailModelCopyWith<_$_AnoboyDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnoboyEpisodeNavigationItemModel _$AnoboyEpisodeNavigationItemModelFromJson(
    Map<String, dynamic> json) {
  return _AnoboyEpisodeNavigationItemModel.fromJson(json);
}

/// @nodoc
mixin _$AnoboyEpisodeNavigationItemModel {
  @JsonKey(name: "nav_link")
  String get navLink => throw _privateConstructorUsedError;
  @JsonKey(name: "nav_name")
  String get navName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyEpisodeNavigationItemModelCopyWith<AnoboyEpisodeNavigationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  factory $AnoboyEpisodeNavigationItemModelCopyWith(
          AnoboyEpisodeNavigationItemModel value,
          $Res Function(AnoboyEpisodeNavigationItemModel) then) =
      _$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res,
          AnoboyEpisodeNavigationItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "nav_link") String navLink,
      @JsonKey(name: "nav_name") String navName});
}

/// @nodoc
class _$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res,
        $Val extends AnoboyEpisodeNavigationItemModel>
    implements $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  _$AnoboyEpisodeNavigationItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navLink = null,
    Object? navName = null,
  }) {
    return _then(_value.copyWith(
      navLink: null == navLink
          ? _value.navLink
          : navLink // ignore: cast_nullable_to_non_nullable
              as String,
      navName: null == navName
          ? _value.navName
          : navName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnoboyEpisodeNavigationItemModelCopyWith<$Res>
    implements $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  factory _$$_AnoboyEpisodeNavigationItemModelCopyWith(
          _$_AnoboyEpisodeNavigationItemModel value,
          $Res Function(_$_AnoboyEpisodeNavigationItemModel) then) =
      __$$_AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nav_link") String navLink,
      @JsonKey(name: "nav_name") String navName});
}

/// @nodoc
class __$$_AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res>
    extends _$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res,
        _$_AnoboyEpisodeNavigationItemModel>
    implements _$$_AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  __$$_AnoboyEpisodeNavigationItemModelCopyWithImpl(
      _$_AnoboyEpisodeNavigationItemModel _value,
      $Res Function(_$_AnoboyEpisodeNavigationItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navLink = null,
    Object? navName = null,
  }) {
    return _then(_$_AnoboyEpisodeNavigationItemModel(
      navLink: null == navLink
          ? _value.navLink
          : navLink // ignore: cast_nullable_to_non_nullable
              as String,
      navName: null == navName
          ? _value.navName
          : navName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnoboyEpisodeNavigationItemModel
    implements _AnoboyEpisodeNavigationItemModel {
  const _$_AnoboyEpisodeNavigationItemModel(
      {@JsonKey(name: "nav_link") this.navLink = "",
      @JsonKey(name: "nav_name") this.navName = ""});

  factory _$_AnoboyEpisodeNavigationItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnoboyEpisodeNavigationItemModelFromJson(json);

  @override
  @JsonKey(name: "nav_link")
  final String navLink;
  @override
  @JsonKey(name: "nav_name")
  final String navName;

  @override
  String toString() {
    return 'AnoboyEpisodeNavigationItemModel(navLink: $navLink, navName: $navName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnoboyEpisodeNavigationItemModel &&
            (identical(other.navLink, navLink) || other.navLink == navLink) &&
            (identical(other.navName, navName) || other.navName == navName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, navLink, navName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnoboyEpisodeNavigationItemModelCopyWith<
          _$_AnoboyEpisodeNavigationItemModel>
      get copyWith => __$$_AnoboyEpisodeNavigationItemModelCopyWithImpl<
          _$_AnoboyEpisodeNavigationItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnoboyEpisodeNavigationItemModelToJson(
      this,
    );
  }
}

abstract class _AnoboyEpisodeNavigationItemModel
    implements AnoboyEpisodeNavigationItemModel {
  const factory _AnoboyEpisodeNavigationItemModel(
          {@JsonKey(name: "nav_link") final String navLink,
          @JsonKey(name: "nav_name") final String navName}) =
      _$_AnoboyEpisodeNavigationItemModel;

  factory _AnoboyEpisodeNavigationItemModel.fromJson(
      Map<String, dynamic> json) = _$_AnoboyEpisodeNavigationItemModel.fromJson;

  @override
  @JsonKey(name: "nav_link")
  String get navLink;
  @override
  @JsonKey(name: "nav_name")
  String get navName;
  @override
  @JsonKey(ignore: true)
  _$$_AnoboyEpisodeNavigationItemModelCopyWith<
          _$_AnoboyEpisodeNavigationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

AnoboyLinksItem _$AnoboyLinksItemFromJson(Map<String, dynamic> json) {
  return _AnoboyLinksItem.fromJson(json);
}

/// @nodoc
mixin _$AnoboyLinksItem {
  String get resolution => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyLinksItemCopyWith<AnoboyLinksItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyLinksItemCopyWith<$Res> {
  factory $AnoboyLinksItemCopyWith(
          AnoboyLinksItem value, $Res Function(AnoboyLinksItem) then) =
      _$AnoboyLinksItemCopyWithImpl<$Res, AnoboyLinksItem>;
  @useResult
  $Res call({String resolution, String link});
}

/// @nodoc
class _$AnoboyLinksItemCopyWithImpl<$Res, $Val extends AnoboyLinksItem>
    implements $AnoboyLinksItemCopyWith<$Res> {
  _$AnoboyLinksItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnoboyLinksItemCopyWith<$Res>
    implements $AnoboyLinksItemCopyWith<$Res> {
  factory _$$_AnoboyLinksItemCopyWith(
          _$_AnoboyLinksItem value, $Res Function(_$_AnoboyLinksItem) then) =
      __$$_AnoboyLinksItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resolution, String link});
}

/// @nodoc
class __$$_AnoboyLinksItemCopyWithImpl<$Res>
    extends _$AnoboyLinksItemCopyWithImpl<$Res, _$_AnoboyLinksItem>
    implements _$$_AnoboyLinksItemCopyWith<$Res> {
  __$$_AnoboyLinksItemCopyWithImpl(
      _$_AnoboyLinksItem _value, $Res Function(_$_AnoboyLinksItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? link = null,
  }) {
    return _then(_$_AnoboyLinksItem(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnoboyLinksItem implements _AnoboyLinksItem {
  const _$_AnoboyLinksItem({this.resolution = "", this.link = ""});

  factory _$_AnoboyLinksItem.fromJson(Map<String, dynamic> json) =>
      _$$_AnoboyLinksItemFromJson(json);

  @override
  @JsonKey()
  final String resolution;
  @override
  @JsonKey()
  final String link;

  @override
  String toString() {
    return 'AnoboyLinksItem(resolution: $resolution, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnoboyLinksItem &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resolution, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnoboyLinksItemCopyWith<_$_AnoboyLinksItem> get copyWith =>
      __$$_AnoboyLinksItemCopyWithImpl<_$_AnoboyLinksItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnoboyLinksItemToJson(
      this,
    );
  }
}

abstract class _AnoboyLinksItem implements AnoboyLinksItem {
  const factory _AnoboyLinksItem({final String resolution, final String link}) =
      _$_AnoboyLinksItem;

  factory _AnoboyLinksItem.fromJson(Map<String, dynamic> json) =
      _$_AnoboyLinksItem.fromJson;

  @override
  String get resolution;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_AnoboyLinksItemCopyWith<_$_AnoboyLinksItem> get copyWith =>
      throw _privateConstructorUsedError;
}
