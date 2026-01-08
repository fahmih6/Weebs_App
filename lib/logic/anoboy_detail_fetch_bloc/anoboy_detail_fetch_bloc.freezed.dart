// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_detail_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnoboyDetailFetchEvent {

 String get param;
/// Create a copy of AnoboyDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyDetailFetchEventCopyWith<AnoboyDetailFetchEvent> get copyWith => _$AnoboyDetailFetchEventCopyWithImpl<AnoboyDetailFetchEvent>(this as AnoboyDetailFetchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyDetailFetchEvent&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'AnoboyDetailFetchEvent(param: $param)';
}


}

/// @nodoc
abstract mixin class $AnoboyDetailFetchEventCopyWith<$Res>  {
  factory $AnoboyDetailFetchEventCopyWith(AnoboyDetailFetchEvent value, $Res Function(AnoboyDetailFetchEvent) _then) = _$AnoboyDetailFetchEventCopyWithImpl;
@useResult
$Res call({
 String param
});




}
/// @nodoc
class _$AnoboyDetailFetchEventCopyWithImpl<$Res>
    implements $AnoboyDetailFetchEventCopyWith<$Res> {
  _$AnoboyDetailFetchEventCopyWithImpl(this._self, this._then);

  final AnoboyDetailFetchEvent _self;
  final $Res Function(AnoboyDetailFetchEvent) _then;

/// Create a copy of AnoboyDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? param = null,}) {
  return _then(_self.copyWith(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyDetailFetchEvent].
extension AnoboyDetailFetchEventPatterns on AnoboyDetailFetchEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String param)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String param)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.param);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String param)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AnoboyDetailFetchEvent {
  const _Started({required this.param});
  

@override final  String param;

/// Create a copy of AnoboyDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'AnoboyDetailFetchEvent.started(param: $param)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $AnoboyDetailFetchEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String param
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of AnoboyDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_Started(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AnoboyDetailFetchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyDetailFetchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyDetailFetchState()';
}


}

/// @nodoc
class $AnoboyDetailFetchStateCopyWith<$Res>  {
$AnoboyDetailFetchStateCopyWith(AnoboyDetailFetchState _, $Res Function(AnoboyDetailFetchState) __);
}


/// Adds pattern-matching-related methods to [AnoboyDetailFetchState].
extension AnoboyDetailFetchStatePatterns on AnoboyDetailFetchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Completed value)?  completed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Completed() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Completed value)  completed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Completed():
return completed(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Completed value)?  completed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Completed() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AnoboyDetailModel anoboyDetailModel,  String errorMessage)?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.anoboyDetailModel,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AnoboyDetailModel anoboyDetailModel,  String errorMessage)  completed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Completed():
return completed(_that.anoboyDetailModel,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AnoboyDetailModel anoboyDetailModel,  String errorMessage)?  completed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.anoboyDetailModel,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AnoboyDetailFetchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyDetailFetchState.initial()';
}


}




/// @nodoc


class _Loading implements AnoboyDetailFetchState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyDetailFetchState.loading()';
}


}




/// @nodoc


class _Completed implements AnoboyDetailFetchState {
  const _Completed({required this.anoboyDetailModel, this.errorMessage = ""});
  

 final  AnoboyDetailModel anoboyDetailModel;
@JsonKey() final  String errorMessage;

/// Create a copy of AnoboyDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.anoboyDetailModel, anoboyDetailModel) || other.anoboyDetailModel == anoboyDetailModel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyDetailModel,errorMessage);

@override
String toString() {
  return 'AnoboyDetailFetchState.completed(anoboyDetailModel: $anoboyDetailModel, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $AnoboyDetailFetchStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 AnoboyDetailModel anoboyDetailModel, String errorMessage
});


$AnoboyDetailModelCopyWith<$Res> get anoboyDetailModel;

}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of AnoboyDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? anoboyDetailModel = null,Object? errorMessage = null,}) {
  return _then(_Completed(
anoboyDetailModel: null == anoboyDetailModel ? _self.anoboyDetailModel : anoboyDetailModel // ignore: cast_nullable_to_non_nullable
as AnoboyDetailModel,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AnoboyDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<$Res> get anoboyDetailModel {
  
  return $AnoboyDetailModelCopyWith<$Res>(_self.anoboyDetailModel, (value) {
    return _then(_self.copyWith(anoboyDetailModel: value));
  });
}
}

// dart format on
