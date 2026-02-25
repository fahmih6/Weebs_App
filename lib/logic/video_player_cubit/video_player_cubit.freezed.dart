// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoPlayerState {

 CachedVideoPlayerPlus? get controller; Duration? get lastPosition; String? get url; List<AnoboyLinksItemModel> get links; bool get isFullScreen;
/// Create a copy of VideoPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPlayerStateCopyWith<VideoPlayerState> get copyWith => _$VideoPlayerStateCopyWithImpl<VideoPlayerState>(this as VideoPlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPlayerState&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.lastPosition, lastPosition) || other.lastPosition == lastPosition)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.links, links)&&(identical(other.isFullScreen, isFullScreen) || other.isFullScreen == isFullScreen));
}


@override
int get hashCode => Object.hash(runtimeType,controller,lastPosition,url,const DeepCollectionEquality().hash(links),isFullScreen);

@override
String toString() {
  return 'VideoPlayerState(controller: $controller, lastPosition: $lastPosition, url: $url, links: $links, isFullScreen: $isFullScreen)';
}


}

/// @nodoc
abstract mixin class $VideoPlayerStateCopyWith<$Res>  {
  factory $VideoPlayerStateCopyWith(VideoPlayerState value, $Res Function(VideoPlayerState) _then) = _$VideoPlayerStateCopyWithImpl;
@useResult
$Res call({
 CachedVideoPlayerPlus? controller, Duration? lastPosition, String? url, List<AnoboyLinksItemModel> links, bool isFullScreen
});




}
/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._self, this._then);

  final VideoPlayerState _self;
  final $Res Function(VideoPlayerState) _then;

/// Create a copy of VideoPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? controller = freezed,Object? lastPosition = freezed,Object? url = freezed,Object? links = null,Object? isFullScreen = null,}) {
  return _then(_self.copyWith(
controller: freezed == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as CachedVideoPlayerPlus?,lastPosition: freezed == lastPosition ? _self.lastPosition : lastPosition // ignore: cast_nullable_to_non_nullable
as Duration?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,isFullScreen: null == isFullScreen ? _self.isFullScreen : isFullScreen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPlayerState].
extension VideoPlayerStatePatterns on VideoPlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _State value)?  state,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _State value)  state,}){
final _that = this;
switch (_that) {
case _State():
return state(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _State value)?  state,}){
final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CachedVideoPlayerPlus? controller,  Duration? lastPosition,  String? url,  List<AnoboyLinksItemModel> links,  bool isFullScreen)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.controller,_that.lastPosition,_that.url,_that.links,_that.isFullScreen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CachedVideoPlayerPlus? controller,  Duration? lastPosition,  String? url,  List<AnoboyLinksItemModel> links,  bool isFullScreen)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.controller,_that.lastPosition,_that.url,_that.links,_that.isFullScreen);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CachedVideoPlayerPlus? controller,  Duration? lastPosition,  String? url,  List<AnoboyLinksItemModel> links,  bool isFullScreen)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.controller,_that.lastPosition,_that.url,_that.links,_that.isFullScreen);case _:
  return null;

}
}

}

/// @nodoc


class _State implements VideoPlayerState {
  const _State({this.controller, this.lastPosition, this.url, final  List<AnoboyLinksItemModel> links = const [], this.isFullScreen = false}): _links = links;
  

@override final  CachedVideoPlayerPlus? controller;
@override final  Duration? lastPosition;
@override final  String? url;
 final  List<AnoboyLinksItemModel> _links;
@override@JsonKey() List<AnoboyLinksItemModel> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}

@override@JsonKey() final  bool isFullScreen;

/// Create a copy of VideoPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.lastPosition, lastPosition) || other.lastPosition == lastPosition)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._links, _links)&&(identical(other.isFullScreen, isFullScreen) || other.isFullScreen == isFullScreen));
}


@override
int get hashCode => Object.hash(runtimeType,controller,lastPosition,url,const DeepCollectionEquality().hash(_links),isFullScreen);

@override
String toString() {
  return 'VideoPlayerState.state(controller: $controller, lastPosition: $lastPosition, url: $url, links: $links, isFullScreen: $isFullScreen)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $VideoPlayerStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 CachedVideoPlayerPlus? controller, Duration? lastPosition, String? url, List<AnoboyLinksItemModel> links, bool isFullScreen
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of VideoPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? controller = freezed,Object? lastPosition = freezed,Object? url = freezed,Object? links = null,Object? isFullScreen = null,}) {
  return _then(_State(
controller: freezed == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as CachedVideoPlayerPlus?,lastPosition: freezed == lastPosition ? _self.lastPosition : lastPosition // ignore: cast_nullable_to_non_nullable
as Duration?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<AnoboyLinksItemModel>,isFullScreen: null == isFullScreen ? _self.isFullScreen : isFullScreen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
