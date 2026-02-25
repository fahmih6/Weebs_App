// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppbarVideoState {

 CachedVideoPlayerPlus? get videoPlayerController; bool get shouldStop; bool get isVisible;
/// Create a copy of AppbarVideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppbarVideoStateCopyWith<AppbarVideoState> get copyWith => _$AppbarVideoStateCopyWithImpl<AppbarVideoState>(this as AppbarVideoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppbarVideoState&&(identical(other.videoPlayerController, videoPlayerController) || other.videoPlayerController == videoPlayerController)&&(identical(other.shouldStop, shouldStop) || other.shouldStop == shouldStop)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,videoPlayerController,shouldStop,isVisible);

@override
String toString() {
  return 'AppbarVideoState(videoPlayerController: $videoPlayerController, shouldStop: $shouldStop, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $AppbarVideoStateCopyWith<$Res>  {
  factory $AppbarVideoStateCopyWith(AppbarVideoState value, $Res Function(AppbarVideoState) _then) = _$AppbarVideoStateCopyWithImpl;
@useResult
$Res call({
 CachedVideoPlayerPlus? videoPlayerController, bool shouldStop, bool isVisible
});




}
/// @nodoc
class _$AppbarVideoStateCopyWithImpl<$Res>
    implements $AppbarVideoStateCopyWith<$Res> {
  _$AppbarVideoStateCopyWithImpl(this._self, this._then);

  final AppbarVideoState _self;
  final $Res Function(AppbarVideoState) _then;

/// Create a copy of AppbarVideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoPlayerController = freezed,Object? shouldStop = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
videoPlayerController: freezed == videoPlayerController ? _self.videoPlayerController : videoPlayerController // ignore: cast_nullable_to_non_nullable
as CachedVideoPlayerPlus?,shouldStop: null == shouldStop ? _self.shouldStop : shouldStop // ignore: cast_nullable_to_non_nullable
as bool,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppbarVideoState].
extension AppbarVideoStatePatterns on AppbarVideoState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CachedVideoPlayerPlus? videoPlayerController,  bool shouldStop,  bool isVisible)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.videoPlayerController,_that.shouldStop,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CachedVideoPlayerPlus? videoPlayerController,  bool shouldStop,  bool isVisible)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.videoPlayerController,_that.shouldStop,_that.isVisible);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CachedVideoPlayerPlus? videoPlayerController,  bool shouldStop,  bool isVisible)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.videoPlayerController,_that.shouldStop,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc


class _State implements AppbarVideoState {
  const _State({this.videoPlayerController, this.shouldStop = false, this.isVisible = true});
  

@override final  CachedVideoPlayerPlus? videoPlayerController;
@override@JsonKey() final  bool shouldStop;
@override@JsonKey() final  bool isVisible;

/// Create a copy of AppbarVideoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.videoPlayerController, videoPlayerController) || other.videoPlayerController == videoPlayerController)&&(identical(other.shouldStop, shouldStop) || other.shouldStop == shouldStop)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,videoPlayerController,shouldStop,isVisible);

@override
String toString() {
  return 'AppbarVideoState.state(videoPlayerController: $videoPlayerController, shouldStop: $shouldStop, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $AppbarVideoStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 CachedVideoPlayerPlus? videoPlayerController, bool shouldStop, bool isVisible
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of AppbarVideoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoPlayerController = freezed,Object? shouldStop = null,Object? isVisible = null,}) {
  return _then(_State(
videoPlayerController: freezed == videoPlayerController ? _self.videoPlayerController : videoPlayerController // ignore: cast_nullable_to_non_nullable
as CachedVideoPlayerPlus?,shouldStop: null == shouldStop ? _self.shouldStop : shouldStop // ignore: cast_nullable_to_non_nullable
as bool,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
