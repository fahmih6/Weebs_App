// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {

 bool? get anoboyAppBarVideo; KomikReadImageMode? get komikReadImageMode;
/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEventCopyWith<SettingsEvent> get copyWith => _$SettingsEventCopyWithImpl<SettingsEvent>(this as SettingsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent&&(identical(other.anoboyAppBarVideo, anoboyAppBarVideo) || other.anoboyAppBarVideo == anoboyAppBarVideo)&&(identical(other.komikReadImageMode, komikReadImageMode) || other.komikReadImageMode == komikReadImageMode));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyAppBarVideo,komikReadImageMode);

@override
String toString() {
  return 'SettingsEvent(anoboyAppBarVideo: $anoboyAppBarVideo, komikReadImageMode: $komikReadImageMode)';
}


}

/// @nodoc
abstract mixin class $SettingsEventCopyWith<$Res>  {
  factory $SettingsEventCopyWith(SettingsEvent value, $Res Function(SettingsEvent) _then) = _$SettingsEventCopyWithImpl;
@useResult
$Res call({
 bool? anoboyAppBarVideo, KomikReadImageMode? komikReadImageMode
});




}
/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._self, this._then);

  final SettingsEvent _self;
  final $Res Function(SettingsEvent) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anoboyAppBarVideo = freezed,Object? komikReadImageMode = freezed,}) {
  return _then(_self.copyWith(
anoboyAppBarVideo: freezed == anoboyAppBarVideo ? _self.anoboyAppBarVideo : anoboyAppBarVideo // ignore: cast_nullable_to_non_nullable
as bool?,komikReadImageMode: freezed == komikReadImageMode ? _self.komikReadImageMode : komikReadImageMode // ignore: cast_nullable_to_non_nullable
as KomikReadImageMode?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? anoboyAppBarVideo,  KomikReadImageMode? komikReadImageMode)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.anoboyAppBarVideo,_that.komikReadImageMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? anoboyAppBarVideo,  KomikReadImageMode? komikReadImageMode)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.anoboyAppBarVideo,_that.komikReadImageMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? anoboyAppBarVideo,  KomikReadImageMode? komikReadImageMode)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.anoboyAppBarVideo,_that.komikReadImageMode);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SettingsEvent {
  const _Started({this.anoboyAppBarVideo, this.komikReadImageMode});
  

@override final  bool? anoboyAppBarVideo;
@override final  KomikReadImageMode? komikReadImageMode;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.anoboyAppBarVideo, anoboyAppBarVideo) || other.anoboyAppBarVideo == anoboyAppBarVideo)&&(identical(other.komikReadImageMode, komikReadImageMode) || other.komikReadImageMode == komikReadImageMode));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyAppBarVideo,komikReadImageMode);

@override
String toString() {
  return 'SettingsEvent.started(anoboyAppBarVideo: $anoboyAppBarVideo, komikReadImageMode: $komikReadImageMode)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 bool? anoboyAppBarVideo, KomikReadImageMode? komikReadImageMode
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anoboyAppBarVideo = freezed,Object? komikReadImageMode = freezed,}) {
  return _then(_Started(
anoboyAppBarVideo: freezed == anoboyAppBarVideo ? _self.anoboyAppBarVideo : anoboyAppBarVideo // ignore: cast_nullable_to_non_nullable
as bool?,komikReadImageMode: freezed == komikReadImageMode ? _self.komikReadImageMode : komikReadImageMode // ignore: cast_nullable_to_non_nullable
as KomikReadImageMode?,
  ));
}


}

/// @nodoc
mixin _$SettingsState {

 SettingsModel get settingsData;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.settingsData, settingsData) || other.settingsData == settingsData));
}


@override
int get hashCode => Object.hash(runtimeType,settingsData);

@override
String toString() {
  return 'SettingsState(settingsData: $settingsData)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 SettingsModel settingsData
});


$SettingsModelCopyWith<$Res> get settingsData;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settingsData = null,}) {
  return _then(_self.copyWith(
settingsData: null == settingsData ? _self.settingsData : settingsData // ignore: cast_nullable_to_non_nullable
as SettingsModel,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<$Res> get settingsData {
  
  return $SettingsModelCopyWith<$Res>(_self.settingsData, (value) {
    return _then(_self.copyWith(settingsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SettingsModel settingsData)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.settingsData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SettingsModel settingsData)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.settingsData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SettingsModel settingsData)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.settingsData);case _:
  return null;

}
}

}

/// @nodoc


class _State implements SettingsState {
  const _State({this.settingsData = const SettingsModel()});
  

@override@JsonKey() final  SettingsModel settingsData;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.settingsData, settingsData) || other.settingsData == settingsData));
}


@override
int get hashCode => Object.hash(runtimeType,settingsData);

@override
String toString() {
  return 'SettingsState.state(settingsData: $settingsData)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 SettingsModel settingsData
});


@override $SettingsModelCopyWith<$Res> get settingsData;

}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settingsData = null,}) {
  return _then(_State(
settingsData: null == settingsData ? _self.settingsData : settingsData // ignore: cast_nullable_to_non_nullable
as SettingsModel,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<$Res> get settingsData {
  
  return $SettingsModelCopyWith<$Res>(_self.settingsData, (value) {
    return _then(_self.copyWith(settingsData: value));
  });
}
}

// dart format on
