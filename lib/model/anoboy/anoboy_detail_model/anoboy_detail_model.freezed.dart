// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnoboyDetailModel {

/// Anime Name
 String get name;/// Anime Synopsis
 String get synopsis;/// Thumbnail
 String get thumbnail;/// Episode Navigation if any
@JsonKey(name: "episode_navigation") List<AnoboyEpisodeNavigationItemModel> get episodeNavigations;/// Video Embed Links
@JsonKey(name: "video_embed_links") List<AnoboyLinksItemModel> get videoEmbedLinks;/// Video Direct Links
@JsonKey(name: "video_direct_links") List<AnoboyLinksItemModel> get videoDirectLinks;/// Video Embed Mirror Links
@JsonKey(name: "video_mirrors") List<AnoboyLinksItemModel> get videoEmbedMirrorLinks;/// Video Mirrors Direct Link
@JsonKey(name: 'video_mirrors_direct_link') List<AnoboyLinksItemModel> get videoMirrorDirectLinks;
/// Create a copy of AnoboyDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<AnoboyDetailModel> get copyWith => _$AnoboyDetailModelCopyWithImpl<AnoboyDetailModel>(this as AnoboyDetailModel, _$identity);

  /// Serializes this AnoboyDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyDetailModel&&(identical(other.name, name) || other.name == name)&&(identical(other.synopsis, synopsis) || other.synopsis == synopsis)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.episodeNavigations, episodeNavigations)&&const DeepCollectionEquality().equals(other.videoEmbedLinks, videoEmbedLinks)&&const DeepCollectionEquality().equals(other.videoDirectLinks, videoDirectLinks)&&const DeepCollectionEquality().equals(other.videoEmbedMirrorLinks, videoEmbedMirrorLinks)&&const DeepCollectionEquality().equals(other.videoMirrorDirectLinks, videoMirrorDirectLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,synopsis,thumbnail,const DeepCollectionEquality().hash(episodeNavigations),const DeepCollectionEquality().hash(videoEmbedLinks),const DeepCollectionEquality().hash(videoDirectLinks),const DeepCollectionEquality().hash(videoEmbedMirrorLinks),const DeepCollectionEquality().hash(videoMirrorDirectLinks));

@override
String toString() {
  return 'AnoboyDetailModel(name: $name, synopsis: $synopsis, thumbnail: $thumbnail, episodeNavigations: $episodeNavigations, videoEmbedLinks: $videoEmbedLinks, videoDirectLinks: $videoDirectLinks, videoEmbedMirrorLinks: $videoEmbedMirrorLinks, videoMirrorDirectLinks: $videoMirrorDirectLinks)';
}


}

/// @nodoc
abstract mixin class $AnoboyDetailModelCopyWith<$Res>  {
  factory $AnoboyDetailModelCopyWith(AnoboyDetailModel value, $Res Function(AnoboyDetailModel) _then) = _$AnoboyDetailModelCopyWithImpl;
@useResult
$Res call({
 String name, String synopsis, String thumbnail,@JsonKey(name: "episode_navigation") List<AnoboyEpisodeNavigationItemModel> episodeNavigations,@JsonKey(name: "video_embed_links") List<AnoboyLinksItemModel> videoEmbedLinks,@JsonKey(name: "video_direct_links") List<AnoboyLinksItemModel> videoDirectLinks,@JsonKey(name: "video_mirrors") List<AnoboyLinksItemModel> videoEmbedMirrorLinks,@JsonKey(name: 'video_mirrors_direct_link') List<AnoboyLinksItemModel> videoMirrorDirectLinks
});




}
/// @nodoc
class _$AnoboyDetailModelCopyWithImpl<$Res>
    implements $AnoboyDetailModelCopyWith<$Res> {
  _$AnoboyDetailModelCopyWithImpl(this._self, this._then);

  final AnoboyDetailModel _self;
  final $Res Function(AnoboyDetailModel) _then;

/// Create a copy of AnoboyDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? synopsis = null,Object? thumbnail = null,Object? episodeNavigations = null,Object? videoEmbedLinks = null,Object? videoDirectLinks = null,Object? videoEmbedMirrorLinks = null,Object? videoMirrorDirectLinks = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,synopsis: null == synopsis ? _self.synopsis : synopsis // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,episodeNavigations: null == episodeNavigations ? _self.episodeNavigations : episodeNavigations // ignore: cast_nullable_to_non_nullable
as List<AnoboyEpisodeNavigationItemModel>,videoEmbedLinks: null == videoEmbedLinks ? _self.videoEmbedLinks : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoDirectLinks: null == videoDirectLinks ? _self.videoDirectLinks : videoDirectLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoEmbedMirrorLinks: null == videoEmbedMirrorLinks ? _self.videoEmbedMirrorLinks : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoMirrorDirectLinks: null == videoMirrorDirectLinks ? _self.videoMirrorDirectLinks : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyDetailModel].
extension AnoboyDetailModelPatterns on AnoboyDetailModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnoboyDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnoboyDetailModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnoboyDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _AnoboyDetailModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnoboyDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnoboyDetailModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String synopsis,  String thumbnail, @JsonKey(name: "episode_navigation")  List<AnoboyEpisodeNavigationItemModel> episodeNavigations, @JsonKey(name: "video_embed_links")  List<AnoboyLinksItemModel> videoEmbedLinks, @JsonKey(name: "video_direct_links")  List<AnoboyLinksItemModel> videoDirectLinks, @JsonKey(name: "video_mirrors")  List<AnoboyLinksItemModel> videoEmbedMirrorLinks, @JsonKey(name: 'video_mirrors_direct_link')  List<AnoboyLinksItemModel> videoMirrorDirectLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnoboyDetailModel() when $default != null:
return $default(_that.name,_that.synopsis,_that.thumbnail,_that.episodeNavigations,_that.videoEmbedLinks,_that.videoDirectLinks,_that.videoEmbedMirrorLinks,_that.videoMirrorDirectLinks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String synopsis,  String thumbnail, @JsonKey(name: "episode_navigation")  List<AnoboyEpisodeNavigationItemModel> episodeNavigations, @JsonKey(name: "video_embed_links")  List<AnoboyLinksItemModel> videoEmbedLinks, @JsonKey(name: "video_direct_links")  List<AnoboyLinksItemModel> videoDirectLinks, @JsonKey(name: "video_mirrors")  List<AnoboyLinksItemModel> videoEmbedMirrorLinks, @JsonKey(name: 'video_mirrors_direct_link')  List<AnoboyLinksItemModel> videoMirrorDirectLinks)  $default,) {final _that = this;
switch (_that) {
case _AnoboyDetailModel():
return $default(_that.name,_that.synopsis,_that.thumbnail,_that.episodeNavigations,_that.videoEmbedLinks,_that.videoDirectLinks,_that.videoEmbedMirrorLinks,_that.videoMirrorDirectLinks);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String synopsis,  String thumbnail, @JsonKey(name: "episode_navigation")  List<AnoboyEpisodeNavigationItemModel> episodeNavigations, @JsonKey(name: "video_embed_links")  List<AnoboyLinksItemModel> videoEmbedLinks, @JsonKey(name: "video_direct_links")  List<AnoboyLinksItemModel> videoDirectLinks, @JsonKey(name: "video_mirrors")  List<AnoboyLinksItemModel> videoEmbedMirrorLinks, @JsonKey(name: 'video_mirrors_direct_link')  List<AnoboyLinksItemModel> videoMirrorDirectLinks)?  $default,) {final _that = this;
switch (_that) {
case _AnoboyDetailModel() when $default != null:
return $default(_that.name,_that.synopsis,_that.thumbnail,_that.episodeNavigations,_that.videoEmbedLinks,_that.videoDirectLinks,_that.videoEmbedMirrorLinks,_that.videoMirrorDirectLinks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnoboyDetailModel implements AnoboyDetailModel {
  const _AnoboyDetailModel({this.name = "", this.synopsis = "", this.thumbnail = "", @JsonKey(name: "episode_navigation") final  List<AnoboyEpisodeNavigationItemModel> episodeNavigations = const [], @JsonKey(name: "video_embed_links") final  List<AnoboyLinksItemModel> videoEmbedLinks = const [], @JsonKey(name: "video_direct_links") final  List<AnoboyLinksItemModel> videoDirectLinks = const [], @JsonKey(name: "video_mirrors") final  List<AnoboyLinksItemModel> videoEmbedMirrorLinks = const [], @JsonKey(name: 'video_mirrors_direct_link') final  List<AnoboyLinksItemModel> videoMirrorDirectLinks = const []}): _episodeNavigations = episodeNavigations,_videoEmbedLinks = videoEmbedLinks,_videoDirectLinks = videoDirectLinks,_videoEmbedMirrorLinks = videoEmbedMirrorLinks,_videoMirrorDirectLinks = videoMirrorDirectLinks;
  factory _AnoboyDetailModel.fromJson(Map<String, dynamic> json) => _$AnoboyDetailModelFromJson(json);

/// Anime Name
@override@JsonKey() final  String name;
/// Anime Synopsis
@override@JsonKey() final  String synopsis;
/// Thumbnail
@override@JsonKey() final  String thumbnail;
/// Episode Navigation if any
 final  List<AnoboyEpisodeNavigationItemModel> _episodeNavigations;
/// Episode Navigation if any
@override@JsonKey(name: "episode_navigation") List<AnoboyEpisodeNavigationItemModel> get episodeNavigations {
  if (_episodeNavigations is EqualUnmodifiableListView) return _episodeNavigations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodeNavigations);
}

/// Video Embed Links
 final  List<AnoboyLinksItemModel> _videoEmbedLinks;
/// Video Embed Links
@override@JsonKey(name: "video_embed_links") List<AnoboyLinksItemModel> get videoEmbedLinks {
  if (_videoEmbedLinks is EqualUnmodifiableListView) return _videoEmbedLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoEmbedLinks);
}

/// Video Direct Links
 final  List<AnoboyLinksItemModel> _videoDirectLinks;
/// Video Direct Links
@override@JsonKey(name: "video_direct_links") List<AnoboyLinksItemModel> get videoDirectLinks {
  if (_videoDirectLinks is EqualUnmodifiableListView) return _videoDirectLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoDirectLinks);
}

/// Video Embed Mirror Links
 final  List<AnoboyLinksItemModel> _videoEmbedMirrorLinks;
/// Video Embed Mirror Links
@override@JsonKey(name: "video_mirrors") List<AnoboyLinksItemModel> get videoEmbedMirrorLinks {
  if (_videoEmbedMirrorLinks is EqualUnmodifiableListView) return _videoEmbedMirrorLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoEmbedMirrorLinks);
}

/// Video Mirrors Direct Link
 final  List<AnoboyLinksItemModel> _videoMirrorDirectLinks;
/// Video Mirrors Direct Link
@override@JsonKey(name: 'video_mirrors_direct_link') List<AnoboyLinksItemModel> get videoMirrorDirectLinks {
  if (_videoMirrorDirectLinks is EqualUnmodifiableListView) return _videoMirrorDirectLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoMirrorDirectLinks);
}


/// Create a copy of AnoboyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnoboyDetailModelCopyWith<_AnoboyDetailModel> get copyWith => __$AnoboyDetailModelCopyWithImpl<_AnoboyDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnoboyDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnoboyDetailModel&&(identical(other.name, name) || other.name == name)&&(identical(other.synopsis, synopsis) || other.synopsis == synopsis)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._episodeNavigations, _episodeNavigations)&&const DeepCollectionEquality().equals(other._videoEmbedLinks, _videoEmbedLinks)&&const DeepCollectionEquality().equals(other._videoDirectLinks, _videoDirectLinks)&&const DeepCollectionEquality().equals(other._videoEmbedMirrorLinks, _videoEmbedMirrorLinks)&&const DeepCollectionEquality().equals(other._videoMirrorDirectLinks, _videoMirrorDirectLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,synopsis,thumbnail,const DeepCollectionEquality().hash(_episodeNavigations),const DeepCollectionEquality().hash(_videoEmbedLinks),const DeepCollectionEquality().hash(_videoDirectLinks),const DeepCollectionEquality().hash(_videoEmbedMirrorLinks),const DeepCollectionEquality().hash(_videoMirrorDirectLinks));

@override
String toString() {
  return 'AnoboyDetailModel(name: $name, synopsis: $synopsis, thumbnail: $thumbnail, episodeNavigations: $episodeNavigations, videoEmbedLinks: $videoEmbedLinks, videoDirectLinks: $videoDirectLinks, videoEmbedMirrorLinks: $videoEmbedMirrorLinks, videoMirrorDirectLinks: $videoMirrorDirectLinks)';
}


}

/// @nodoc
abstract mixin class _$AnoboyDetailModelCopyWith<$Res> implements $AnoboyDetailModelCopyWith<$Res> {
  factory _$AnoboyDetailModelCopyWith(_AnoboyDetailModel value, $Res Function(_AnoboyDetailModel) _then) = __$AnoboyDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String synopsis, String thumbnail,@JsonKey(name: "episode_navigation") List<AnoboyEpisodeNavigationItemModel> episodeNavigations,@JsonKey(name: "video_embed_links") List<AnoboyLinksItemModel> videoEmbedLinks,@JsonKey(name: "video_direct_links") List<AnoboyLinksItemModel> videoDirectLinks,@JsonKey(name: "video_mirrors") List<AnoboyLinksItemModel> videoEmbedMirrorLinks,@JsonKey(name: 'video_mirrors_direct_link') List<AnoboyLinksItemModel> videoMirrorDirectLinks
});




}
/// @nodoc
class __$AnoboyDetailModelCopyWithImpl<$Res>
    implements _$AnoboyDetailModelCopyWith<$Res> {
  __$AnoboyDetailModelCopyWithImpl(this._self, this._then);

  final _AnoboyDetailModel _self;
  final $Res Function(_AnoboyDetailModel) _then;

/// Create a copy of AnoboyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? synopsis = null,Object? thumbnail = null,Object? episodeNavigations = null,Object? videoEmbedLinks = null,Object? videoDirectLinks = null,Object? videoEmbedMirrorLinks = null,Object? videoMirrorDirectLinks = null,}) {
  return _then(_AnoboyDetailModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,synopsis: null == synopsis ? _self.synopsis : synopsis // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,episodeNavigations: null == episodeNavigations ? _self._episodeNavigations : episodeNavigations // ignore: cast_nullable_to_non_nullable
as List<AnoboyEpisodeNavigationItemModel>,videoEmbedLinks: null == videoEmbedLinks ? _self._videoEmbedLinks : videoEmbedLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoDirectLinks: null == videoDirectLinks ? _self._videoDirectLinks : videoDirectLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoEmbedMirrorLinks: null == videoEmbedMirrorLinks ? _self._videoEmbedMirrorLinks : videoEmbedMirrorLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,videoMirrorDirectLinks: null == videoMirrorDirectLinks ? _self._videoMirrorDirectLinks : videoMirrorDirectLinks // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,
  ));
}


}


/// @nodoc
mixin _$AnoboyEpisodeNavigationItemModel {

@JsonKey(name: "nav_link") String get navLink;@JsonKey(name: "nav_name") String get navName;
/// Create a copy of AnoboyEpisodeNavigationItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyEpisodeNavigationItemModelCopyWith<AnoboyEpisodeNavigationItemModel> get copyWith => _$AnoboyEpisodeNavigationItemModelCopyWithImpl<AnoboyEpisodeNavigationItemModel>(this as AnoboyEpisodeNavigationItemModel, _$identity);

  /// Serializes this AnoboyEpisodeNavigationItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyEpisodeNavigationItemModel&&(identical(other.navLink, navLink) || other.navLink == navLink)&&(identical(other.navName, navName) || other.navName == navName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,navLink,navName);

@override
String toString() {
  return 'AnoboyEpisodeNavigationItemModel(navLink: $navLink, navName: $navName)';
}


}

/// @nodoc
abstract mixin class $AnoboyEpisodeNavigationItemModelCopyWith<$Res>  {
  factory $AnoboyEpisodeNavigationItemModelCopyWith(AnoboyEpisodeNavigationItemModel value, $Res Function(AnoboyEpisodeNavigationItemModel) _then) = _$AnoboyEpisodeNavigationItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "nav_link") String navLink,@JsonKey(name: "nav_name") String navName
});




}
/// @nodoc
class _$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res>
    implements $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  _$AnoboyEpisodeNavigationItemModelCopyWithImpl(this._self, this._then);

  final AnoboyEpisodeNavigationItemModel _self;
  final $Res Function(AnoboyEpisodeNavigationItemModel) _then;

/// Create a copy of AnoboyEpisodeNavigationItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? navLink = null,Object? navName = null,}) {
  return _then(_self.copyWith(
navLink: null == navLink ? _self.navLink : navLink // ignore: cast_nullable_to_non_nullable
as String,navName: null == navName ? _self.navName : navName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyEpisodeNavigationItemModel].
extension AnoboyEpisodeNavigationItemModelPatterns on AnoboyEpisodeNavigationItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnoboyEpisodeNavigationItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnoboyEpisodeNavigationItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnoboyEpisodeNavigationItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "nav_link")  String navLink, @JsonKey(name: "nav_name")  String navName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel() when $default != null:
return $default(_that.navLink,_that.navName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "nav_link")  String navLink, @JsonKey(name: "nav_name")  String navName)  $default,) {final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel():
return $default(_that.navLink,_that.navName);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "nav_link")  String navLink, @JsonKey(name: "nav_name")  String navName)?  $default,) {final _that = this;
switch (_that) {
case _AnoboyEpisodeNavigationItemModel() when $default != null:
return $default(_that.navLink,_that.navName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnoboyEpisodeNavigationItemModel implements AnoboyEpisodeNavigationItemModel {
  const _AnoboyEpisodeNavigationItemModel({@JsonKey(name: "nav_link") this.navLink = "", @JsonKey(name: "nav_name") this.navName = ""});
  factory _AnoboyEpisodeNavigationItemModel.fromJson(Map<String, dynamic> json) => _$AnoboyEpisodeNavigationItemModelFromJson(json);

@override@JsonKey(name: "nav_link") final  String navLink;
@override@JsonKey(name: "nav_name") final  String navName;

/// Create a copy of AnoboyEpisodeNavigationItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnoboyEpisodeNavigationItemModelCopyWith<_AnoboyEpisodeNavigationItemModel> get copyWith => __$AnoboyEpisodeNavigationItemModelCopyWithImpl<_AnoboyEpisodeNavigationItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnoboyEpisodeNavigationItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnoboyEpisodeNavigationItemModel&&(identical(other.navLink, navLink) || other.navLink == navLink)&&(identical(other.navName, navName) || other.navName == navName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,navLink,navName);

@override
String toString() {
  return 'AnoboyEpisodeNavigationItemModel(navLink: $navLink, navName: $navName)';
}


}

/// @nodoc
abstract mixin class _$AnoboyEpisodeNavigationItemModelCopyWith<$Res> implements $AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  factory _$AnoboyEpisodeNavigationItemModelCopyWith(_AnoboyEpisodeNavigationItemModel value, $Res Function(_AnoboyEpisodeNavigationItemModel) _then) = __$AnoboyEpisodeNavigationItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "nav_link") String navLink,@JsonKey(name: "nav_name") String navName
});




}
/// @nodoc
class __$AnoboyEpisodeNavigationItemModelCopyWithImpl<$Res>
    implements _$AnoboyEpisodeNavigationItemModelCopyWith<$Res> {
  __$AnoboyEpisodeNavigationItemModelCopyWithImpl(this._self, this._then);

  final _AnoboyEpisodeNavigationItemModel _self;
  final $Res Function(_AnoboyEpisodeNavigationItemModel) _then;

/// Create a copy of AnoboyEpisodeNavigationItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navLink = null,Object? navName = null,}) {
  return _then(_AnoboyEpisodeNavigationItemModel(
navLink: null == navLink ? _self.navLink : navLink // ignore: cast_nullable_to_non_nullable
as String,navName: null == navName ? _self.navName : navName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AnoboyLinksItemModel {

 String get resolution; String get link; Map<String, dynamic>? get headers;
/// Create a copy of AnoboyLinksItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyLinksItemModelCopyWith<AnoboyLinksItemModel> get copyWith => _$AnoboyLinksItemModelCopyWithImpl<AnoboyLinksItemModel>(this as AnoboyLinksItemModel, _$identity);

  /// Serializes this AnoboyLinksItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyLinksItemModel&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resolution,link,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'AnoboyLinksItemModel(resolution: $resolution, link: $link, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $AnoboyLinksItemModelCopyWith<$Res>  {
  factory $AnoboyLinksItemModelCopyWith(AnoboyLinksItemModel value, $Res Function(AnoboyLinksItemModel) _then) = _$AnoboyLinksItemModelCopyWithImpl;
@useResult
$Res call({
 String resolution, String link, Map<String, dynamic>? headers
});




}
/// @nodoc
class _$AnoboyLinksItemModelCopyWithImpl<$Res>
    implements $AnoboyLinksItemModelCopyWith<$Res> {
  _$AnoboyLinksItemModelCopyWithImpl(this._self, this._then);

  final AnoboyLinksItemModel _self;
  final $Res Function(AnoboyLinksItemModel) _then;

/// Create a copy of AnoboyLinksItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resolution = null,Object? link = null,Object? headers = freezed,}) {
  return _then(_self.copyWith(
resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyLinksItemModel].
extension AnoboyLinksItemModelPatterns on AnoboyLinksItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnoboyLinksItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnoboyLinksItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnoboyLinksItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AnoboyLinksItemModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnoboyLinksItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnoboyLinksItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resolution,  String link,  Map<String, dynamic>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnoboyLinksItemModel() when $default != null:
return $default(_that.resolution,_that.link,_that.headers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resolution,  String link,  Map<String, dynamic>? headers)  $default,) {final _that = this;
switch (_that) {
case _AnoboyLinksItemModel():
return $default(_that.resolution,_that.link,_that.headers);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resolution,  String link,  Map<String, dynamic>? headers)?  $default,) {final _that = this;
switch (_that) {
case _AnoboyLinksItemModel() when $default != null:
return $default(_that.resolution,_that.link,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnoboyLinksItemModel implements AnoboyLinksItemModel {
  const _AnoboyLinksItemModel({this.resolution = "", this.link = "", final  Map<String, dynamic>? headers}): _headers = headers;
  factory _AnoboyLinksItemModel.fromJson(Map<String, dynamic> json) => _$AnoboyLinksItemModelFromJson(json);

@override@JsonKey() final  String resolution;
@override@JsonKey() final  String link;
 final  Map<String, dynamic>? _headers;
@override Map<String, dynamic>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AnoboyLinksItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnoboyLinksItemModelCopyWith<_AnoboyLinksItemModel> get copyWith => __$AnoboyLinksItemModelCopyWithImpl<_AnoboyLinksItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnoboyLinksItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnoboyLinksItemModel&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resolution,link,const DeepCollectionEquality().hash(_headers));

@override
String toString() {
  return 'AnoboyLinksItemModel(resolution: $resolution, link: $link, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$AnoboyLinksItemModelCopyWith<$Res> implements $AnoboyLinksItemModelCopyWith<$Res> {
  factory _$AnoboyLinksItemModelCopyWith(_AnoboyLinksItemModel value, $Res Function(_AnoboyLinksItemModel) _then) = __$AnoboyLinksItemModelCopyWithImpl;
@override @useResult
$Res call({
 String resolution, String link, Map<String, dynamic>? headers
});




}
/// @nodoc
class __$AnoboyLinksItemModelCopyWithImpl<$Res>
    implements _$AnoboyLinksItemModelCopyWith<$Res> {
  __$AnoboyLinksItemModelCopyWithImpl(this._self, this._then);

  final _AnoboyLinksItemModel _self;
  final $Res Function(_AnoboyLinksItemModel) _then;

/// Create a copy of AnoboyLinksItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resolution = null,Object? link = null,Object? headers = freezed,}) {
  return _then(_AnoboyLinksItemModel(
resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
