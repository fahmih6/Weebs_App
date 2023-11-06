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

  /// Thumbnail
  String get thumbnail => throw _privateConstructorUsedError;

  /// Episode Navigation if any
  @JsonKey(name: "episode_navigation")
  List<AnoboyEpisodeNavigationItemModel> get episodeNavigations =>
      throw _privateConstructorUsedError;

  /// Video Embed Links
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItemModel> get videoEmbedLinks =>
      throw _privateConstructorUsedError;

  /// Video Direct Links
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItemModel> get videoDirectLinks =>
      throw _privateConstructorUsedError;

  /// Video Embed Mirror Links
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItemModel> get videoEmbedMirrorLinks =>
      throw _privateConstructorUsedError;

  /// Video Mirrors Direct Link
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItemModel> get videoMirrorDirectLinks =>
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
      String thumbnail,
      @JsonKey(name: "episode_navigation")
      List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
      @JsonKey(name: "video_embed_links")
      List<AnoboyLinksItemModel> videoEmbedLinks,
      @JsonKey(name: "video_direct_links")
      List<AnoboyLinksItemModel> videoDirectLinks,
      @JsonKey(name: "video_mirrors")
      List<AnoboyLinksItemModel> videoEmbedMirrorLinks,
      @JsonKey(name: 'video_mirrors_direct_link')
      List<AnoboyLinksItemModel> videoMirrorDirectLinks});
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
    Object? thumbnail = null,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNavigations: null == episodeNavigations
          ? _value.episodeNavigations
          : episodeNavigations // ignore: cast_nullable_to_non_nullable
              as List<AnoboyEpisodeNavigationItemModel>,
      videoEmbedLinks: null == videoEmbedLinks
          ? _value.videoEmbedLinks
          : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoDirectLinks: null == videoDirectLinks
          ? _value.videoDirectLinks
          : videoDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoEmbedMirrorLinks: null == videoEmbedMirrorLinks
          ? _value.videoEmbedMirrorLinks
          : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoMirrorDirectLinks: null == videoMirrorDirectLinks
          ? _value.videoMirrorDirectLinks
          : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnoboyDetailModelImplCopyWith<$Res>
    implements $AnoboyDetailModelCopyWith<$Res> {
  factory _$$AnoboyDetailModelImplCopyWith(_$AnoboyDetailModelImpl value,
          $Res Function(_$AnoboyDetailModelImpl) then) =
      __$$AnoboyDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String synopsis,
      String thumbnail,
      @JsonKey(name: "episode_navigation")
      List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
      @JsonKey(name: "video_embed_links")
      List<AnoboyLinksItemModel> videoEmbedLinks,
      @JsonKey(name: "video_direct_links")
      List<AnoboyLinksItemModel> videoDirectLinks,
      @JsonKey(name: "video_mirrors")
      List<AnoboyLinksItemModel> videoEmbedMirrorLinks,
      @JsonKey(name: 'video_mirrors_direct_link')
      List<AnoboyLinksItemModel> videoMirrorDirectLinks});
}

/// @nodoc
class __$$AnoboyDetailModelImplCopyWithImpl<$Res>
    extends _$AnoboyDetailModelCopyWithImpl<$Res, _$AnoboyDetailModelImpl>
    implements _$$AnoboyDetailModelImplCopyWith<$Res> {
  __$$AnoboyDetailModelImplCopyWithImpl(_$AnoboyDetailModelImpl _value,
      $Res Function(_$AnoboyDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? synopsis = null,
    Object? thumbnail = null,
    Object? episodeNavigations = null,
    Object? videoEmbedLinks = null,
    Object? videoDirectLinks = null,
    Object? videoEmbedMirrorLinks = null,
    Object? videoMirrorDirectLinks = null,
  }) {
    return _then(_$AnoboyDetailModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNavigations: null == episodeNavigations
          ? _value._episodeNavigations
          : episodeNavigations // ignore: cast_nullable_to_non_nullable
              as List<AnoboyEpisodeNavigationItemModel>,
      videoEmbedLinks: null == videoEmbedLinks
          ? _value._videoEmbedLinks
          : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoDirectLinks: null == videoDirectLinks
          ? _value._videoDirectLinks
          : videoDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoEmbedMirrorLinks: null == videoEmbedMirrorLinks
          ? _value._videoEmbedMirrorLinks
          : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
      videoMirrorDirectLinks: null == videoMirrorDirectLinks
          ? _value._videoMirrorDirectLinks
          : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
              as List<AnoboyLinksItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnoboyDetailModelImpl implements _AnoboyDetailModel {
  const _$AnoboyDetailModelImpl(
      {this.name = "",
      this.synopsis = "",
      this.thumbnail = "",
      @JsonKey(name: "episode_navigation")
      final List<AnoboyEpisodeNavigationItemModel> episodeNavigations =
          const [],
      @JsonKey(name: "video_embed_links")
      final List<AnoboyLinksItemModel> videoEmbedLinks = const [],
      @JsonKey(name: "video_direct_links")
      final List<AnoboyLinksItemModel> videoDirectLinks = const [],
      @JsonKey(name: "video_mirrors")
      final List<AnoboyLinksItemModel> videoEmbedMirrorLinks = const [],
      @JsonKey(name: 'video_mirrors_direct_link')
      final List<AnoboyLinksItemModel> videoMirrorDirectLinks = const []})
      : _episodeNavigations = episodeNavigations,
        _videoEmbedLinks = videoEmbedLinks,
        _videoDirectLinks = videoDirectLinks,
        _videoEmbedMirrorLinks = videoEmbedMirrorLinks,
        _videoMirrorDirectLinks = videoMirrorDirectLinks;

  factory _$AnoboyDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnoboyDetailModelImplFromJson(json);

  /// Anime Name
  @override
  @JsonKey()
  final String name;

  /// Anime Synopsis
  @override
  @JsonKey()
  final String synopsis;

  /// Thumbnail
  @override
  @JsonKey()
  final String thumbnail;

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
  final List<AnoboyLinksItemModel> _videoEmbedLinks;

  /// Video Embed Links
  @override
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItemModel> get videoEmbedLinks {
    if (_videoEmbedLinks is EqualUnmodifiableListView) return _videoEmbedLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoEmbedLinks);
  }

  /// Video Direct Links
  final List<AnoboyLinksItemModel> _videoDirectLinks;

  /// Video Direct Links
  @override
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItemModel> get videoDirectLinks {
    if (_videoDirectLinks is EqualUnmodifiableListView)
      return _videoDirectLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoDirectLinks);
  }

  /// Video Embed Mirror Links
  final List<AnoboyLinksItemModel> _videoEmbedMirrorLinks;

  /// Video Embed Mirror Links
  @override
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItemModel> get videoEmbedMirrorLinks {
    if (_videoEmbedMirrorLinks is EqualUnmodifiableListView)
      return _videoEmbedMirrorLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoEmbedMirrorLinks);
  }

  /// Video Mirrors Direct Link
  final List<AnoboyLinksItemModel> _videoMirrorDirectLinks;

  /// Video Mirrors Direct Link
  @override
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItemModel> get videoMirrorDirectLinks {
    if (_videoMirrorDirectLinks is EqualUnmodifiableListView)
      return _videoMirrorDirectLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoMirrorDirectLinks);
  }

  @override
  String toString() {
    return 'AnoboyDetailModel(name: $name, synopsis: $synopsis, thumbnail: $thumbnail, episodeNavigations: $episodeNavigations, videoEmbedLinks: $videoEmbedLinks, videoDirectLinks: $videoDirectLinks, videoEmbedMirrorLinks: $videoEmbedMirrorLinks, videoMirrorDirectLinks: $videoMirrorDirectLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnoboyDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
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
      thumbnail,
      const DeepCollectionEquality().hash(_episodeNavigations),
      const DeepCollectionEquality().hash(_videoEmbedLinks),
      const DeepCollectionEquality().hash(_videoDirectLinks),
      const DeepCollectionEquality().hash(_videoEmbedMirrorLinks),
      const DeepCollectionEquality().hash(_videoMirrorDirectLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnoboyDetailModelImplCopyWith<_$AnoboyDetailModelImpl> get copyWith =>
      __$$AnoboyDetailModelImplCopyWithImpl<_$AnoboyDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnoboyDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AnoboyDetailModel implements AnoboyDetailModel {
  const factory _AnoboyDetailModel(
          {final String name,
          final String synopsis,
          final String thumbnail,
          @JsonKey(name: "episode_navigation")
          final List<AnoboyEpisodeNavigationItemModel> episodeNavigations,
          @JsonKey(name: "video_embed_links")
          final List<AnoboyLinksItemModel> videoEmbedLinks,
          @JsonKey(name: "video_direct_links")
          final List<AnoboyLinksItemModel> videoDirectLinks,
          @JsonKey(name: "video_mirrors")
          final List<AnoboyLinksItemModel> videoEmbedMirrorLinks,
          @JsonKey(name: 'video_mirrors_direct_link')
          final List<AnoboyLinksItemModel> videoMirrorDirectLinks}) =
      _$AnoboyDetailModelImpl;

  factory _AnoboyDetailModel.fromJson(Map<String, dynamic> json) =
      _$AnoboyDetailModelImpl.fromJson;

  @override

  /// Anime Name
  String get name;
  @override

  /// Anime Synopsis
  String get synopsis;
  @override

  /// Thumbnail
  String get thumbnail;
  @override

  /// Episode Navigation if any
  @JsonKey(name: "episode_navigation")
  List<AnoboyEpisodeNavigationItemModel> get episodeNavigations;
  @override

  /// Video Embed Links
  @JsonKey(name: "video_embed_links")
  List<AnoboyLinksItemModel> get videoEmbedLinks;
  @override

  /// Video Direct Links
  @JsonKey(name: "video_direct_links")
  List<AnoboyLinksItemModel> get videoDirectLinks;
  @override

  /// Video Embed Mirror Links
  @JsonKey(name: "video_mirrors")
  List<AnoboyLinksItemModel> get videoEmbedMirrorLinks;
  @override

  /// Video Mirrors Direct Link
  @JsonKey(name: 'video_mirrors_direct_link')
  List<AnoboyLinksItemModel> get videoMirrorDirectLinks;
  @override
  @JsonKey(ignore: true)
  _$$AnoboyDetailModelImplCopyWith<_$AnoboyDetailModelImpl> get copyWith =>
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
abstract class _$$AnoboyEpisodeNavigationItemModelImplCopyWith<$Res>
    implements $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  factory _$$AnoboyEpisodeNavigationItemModelImplCopyWith(
          _$AnoboyEpisodeNavigationItemModelImpl value,
          $Res Function(_$AnoboyEpisodeNavigationItemModelImpl) then) =
      __$$AnoboyEpisodeNavigationItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nav_link") String navLink,
      @JsonKey(name: "nav_name") String navName});
}

/// @nodoc
class __$$AnoboyEpisodeNavigationItemModelImplCopyWithImpl<$Res>
    extends _$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res,
        _$AnoboyEpisodeNavigationItemModelImpl>
    implements _$$AnoboyEpisodeNavigationItemModelImplCopyWith<$Res> {
  __$$AnoboyEpisodeNavigationItemModelImplCopyWithImpl(
      _$AnoboyEpisodeNavigationItemModelImpl _value,
      $Res Function(_$AnoboyEpisodeNavigationItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navLink = null,
    Object? navName = null,
  }) {
    return _then(_$AnoboyEpisodeNavigationItemModelImpl(
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
class _$AnoboyEpisodeNavigationItemModelImpl
    implements _AnoboyEpisodeNavigationItemModel {
  const _$AnoboyEpisodeNavigationItemModelImpl(
      {@JsonKey(name: "nav_link") this.navLink = "",
      @JsonKey(name: "nav_name") this.navName = ""});

  factory _$AnoboyEpisodeNavigationItemModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnoboyEpisodeNavigationItemModelImplFromJson(json);

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
            other is _$AnoboyEpisodeNavigationItemModelImpl &&
            (identical(other.navLink, navLink) || other.navLink == navLink) &&
            (identical(other.navName, navName) || other.navName == navName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, navLink, navName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnoboyEpisodeNavigationItemModelImplCopyWith<
          _$AnoboyEpisodeNavigationItemModelImpl>
      get copyWith => __$$AnoboyEpisodeNavigationItemModelImplCopyWithImpl<
          _$AnoboyEpisodeNavigationItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnoboyEpisodeNavigationItemModelImplToJson(
      this,
    );
  }
}

abstract class _AnoboyEpisodeNavigationItemModel
    implements AnoboyEpisodeNavigationItemModel {
  const factory _AnoboyEpisodeNavigationItemModel(
          {@JsonKey(name: "nav_link") final String navLink,
          @JsonKey(name: "nav_name") final String navName}) =
      _$AnoboyEpisodeNavigationItemModelImpl;

  factory _AnoboyEpisodeNavigationItemModel.fromJson(
          Map<String, dynamic> json) =
      _$AnoboyEpisodeNavigationItemModelImpl.fromJson;

  @override
  @JsonKey(name: "nav_link")
  String get navLink;
  @override
  @JsonKey(name: "nav_name")
  String get navName;
  @override
  @JsonKey(ignore: true)
  _$$AnoboyEpisodeNavigationItemModelImplCopyWith<
          _$AnoboyEpisodeNavigationItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnoboyLinksItemModel _$AnoboyLinksItemModelFromJson(Map<String, dynamic> json) {
  return _AnoboyLinksItemModel.fromJson(json);
}

/// @nodoc
mixin _$AnoboyLinksItemModel {
  String get resolution => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyLinksItemModelCopyWith<AnoboyLinksItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyLinksItemModelCopyWith<$Res> {
  factory $AnoboyLinksItemModelCopyWith(AnoboyLinksItemModel value,
          $Res Function(AnoboyLinksItemModel) then) =
      _$AnoboyLinksItemModelCopyWithImpl<$Res, AnoboyLinksItemModel>;
  @useResult
  $Res call({String resolution, String link, Map<String, dynamic>? headers});
}

/// @nodoc
class _$AnoboyLinksItemModelCopyWithImpl<$Res,
        $Val extends AnoboyLinksItemModel>
    implements $AnoboyLinksItemModelCopyWith<$Res> {
  _$AnoboyLinksItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? link = null,
    Object? headers = freezed,
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
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnoboyLinksItemModelImplCopyWith<$Res>
    implements $AnoboyLinksItemModelCopyWith<$Res> {
  factory _$$AnoboyLinksItemModelImplCopyWith(_$AnoboyLinksItemModelImpl value,
          $Res Function(_$AnoboyLinksItemModelImpl) then) =
      __$$AnoboyLinksItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resolution, String link, Map<String, dynamic>? headers});
}

/// @nodoc
class __$$AnoboyLinksItemModelImplCopyWithImpl<$Res>
    extends _$AnoboyLinksItemModelCopyWithImpl<$Res, _$AnoboyLinksItemModelImpl>
    implements _$$AnoboyLinksItemModelImplCopyWith<$Res> {
  __$$AnoboyLinksItemModelImplCopyWithImpl(_$AnoboyLinksItemModelImpl _value,
      $Res Function(_$AnoboyLinksItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? link = null,
    Object? headers = freezed,
  }) {
    return _then(_$AnoboyLinksItemModelImpl(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnoboyLinksItemModelImpl implements _AnoboyLinksItemModel {
  const _$AnoboyLinksItemModelImpl(
      {this.resolution = "",
      this.link = "",
      final Map<String, dynamic>? headers})
      : _headers = headers;

  factory _$AnoboyLinksItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnoboyLinksItemModelImplFromJson(json);

  @override
  @JsonKey()
  final String resolution;
  @override
  @JsonKey()
  final String link;
  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AnoboyLinksItemModel(resolution: $resolution, link: $link, headers: $headers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnoboyLinksItemModelImpl &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resolution, link,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnoboyLinksItemModelImplCopyWith<_$AnoboyLinksItemModelImpl>
      get copyWith =>
          __$$AnoboyLinksItemModelImplCopyWithImpl<_$AnoboyLinksItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnoboyLinksItemModelImplToJson(
      this,
    );
  }
}

abstract class _AnoboyLinksItemModel implements AnoboyLinksItemModel {
  const factory _AnoboyLinksItemModel(
      {final String resolution,
      final String link,
      final Map<String, dynamic>? headers}) = _$AnoboyLinksItemModelImpl;

  factory _AnoboyLinksItemModel.fromJson(Map<String, dynamic> json) =
      _$AnoboyLinksItemModelImpl.fromJson;

  @override
  String get resolution;
  @override
  String get link;
  @override
  Map<String, dynamic>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$AnoboyLinksItemModelImplCopyWith<_$AnoboyLinksItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
