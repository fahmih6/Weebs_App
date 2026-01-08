// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komik_read_appbar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomikReadAppbarState {

 bool get shouldShow; String get title;
/// Create a copy of KomikReadAppbarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikReadAppbarStateCopyWith<KomikReadAppbarState> get copyWith => _$KomikReadAppbarStateCopyWithImpl<KomikReadAppbarState>(this as KomikReadAppbarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikReadAppbarState&&(identical(other.shouldShow, shouldShow) || other.shouldShow == shouldShow)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,shouldShow,title);

@override
String toString() {
  return 'KomikReadAppbarState(shouldShow: $shouldShow, title: $title)';
}


}

/// @nodoc
abstract mixin class $KomikReadAppbarStateCopyWith<$Res>  {
  factory $KomikReadAppbarStateCopyWith(KomikReadAppbarState value, $Res Function(KomikReadAppbarState) _then) = _$KomikReadAppbarStateCopyWithImpl;
@useResult
$Res call({
 bool shouldShow, String title
});




}
/// @nodoc
class _$KomikReadAppbarStateCopyWithImpl<$Res>
    implements $KomikReadAppbarStateCopyWith<$Res> {
  _$KomikReadAppbarStateCopyWithImpl(this._self, this._then);

  final KomikReadAppbarState _self;
  final $Res Function(KomikReadAppbarState) _then;

/// Create a copy of KomikReadAppbarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shouldShow = null,Object? title = null,}) {
  return _then(_self.copyWith(
shouldShow: null == shouldShow ? _self.shouldShow : shouldShow // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikReadAppbarState].
extension KomikReadAppbarStatePatterns on KomikReadAppbarState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool shouldShow,  String title)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.shouldShow,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool shouldShow,  String title)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.shouldShow,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool shouldShow,  String title)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.shouldShow,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _State implements KomikReadAppbarState {
  const _State({this.shouldShow = true, this.title = '-'});
  

@override@JsonKey() final  bool shouldShow;
@override@JsonKey() final  String title;

/// Create a copy of KomikReadAppbarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.shouldShow, shouldShow) || other.shouldShow == shouldShow)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,shouldShow,title);

@override
String toString() {
  return 'KomikReadAppbarState.state(shouldShow: $shouldShow, title: $title)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $KomikReadAppbarStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 bool shouldShow, String title
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of KomikReadAppbarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shouldShow = null,Object? title = null,}) {
  return _then(_State(
shouldShow: null == shouldShow ? _self.shouldShow : shouldShow // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
