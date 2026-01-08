// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komik_detail_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomikDetailFetchEvent {

 MangaProvider get provider;
/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikDetailFetchEventCopyWith<KomikDetailFetchEvent> get copyWith => _$KomikDetailFetchEventCopyWithImpl<KomikDetailFetchEvent>(this as KomikDetailFetchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikDetailFetchEvent&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,provider);

@override
String toString() {
  return 'KomikDetailFetchEvent(provider: $provider)';
}


}

/// @nodoc
abstract mixin class $KomikDetailFetchEventCopyWith<$Res>  {
  factory $KomikDetailFetchEventCopyWith(KomikDetailFetchEvent value, $Res Function(KomikDetailFetchEvent) _then) = _$KomikDetailFetchEventCopyWithImpl;
@useResult
$Res call({
 MangaProvider provider
});




}
/// @nodoc
class _$KomikDetailFetchEventCopyWithImpl<$Res>
    implements $KomikDetailFetchEventCopyWith<$Res> {
  _$KomikDetailFetchEventCopyWithImpl(this._self, this._then);

  final KomikDetailFetchEvent _self;
  final $Res Function(KomikDetailFetchEvent) _then;

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikDetailFetchEvent].
extension KomikDetailFetchEventPatterns on KomikDetailFetchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Read value)?  read,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Read() when read != null:
return read(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Read value)  read,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Read():
return read(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Read value)?  read,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Read() when read != null:
return read(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String param,  MangaProvider provider)?  started,TResult Function( KomikuDetailChapterModel item,  MangaProvider provider)?  read,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param,_that.provider);case _Read() when read != null:
return read(_that.item,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String param,  MangaProvider provider)  started,required TResult Function( KomikuDetailChapterModel item,  MangaProvider provider)  read,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.param,_that.provider);case _Read():
return read(_that.item,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String param,  MangaProvider provider)?  started,TResult? Function( KomikuDetailChapterModel item,  MangaProvider provider)?  read,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param,_that.provider);case _Read() when read != null:
return read(_that.item,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements KomikDetailFetchEvent {
  const _Started({required this.param, this.provider = MangaProvider.komiku});
  

 final  String param;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.param, param) || other.param == param)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,param,provider);

@override
String toString() {
  return 'KomikDetailFetchEvent.started(param: $param, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $KomikDetailFetchEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String param, MangaProvider provider
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? param = null,Object? provider = null,}) {
  return _then(_Started(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}


}

/// @nodoc


class _Read implements KomikDetailFetchEvent {
  const _Read({required this.item, this.provider = MangaProvider.komiku});
  

 final  KomikuDetailChapterModel item;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadCopyWith<_Read> get copyWith => __$ReadCopyWithImpl<_Read>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Read&&(identical(other.item, item) || other.item == item)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,item,provider);

@override
String toString() {
  return 'KomikDetailFetchEvent.read(item: $item, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$ReadCopyWith<$Res> implements $KomikDetailFetchEventCopyWith<$Res> {
  factory _$ReadCopyWith(_Read value, $Res Function(_Read) _then) = __$ReadCopyWithImpl;
@override @useResult
$Res call({
 KomikuDetailChapterModel item, MangaProvider provider
});


$KomikuDetailChapterModelCopyWith<$Res> get item;

}
/// @nodoc
class __$ReadCopyWithImpl<$Res>
    implements _$ReadCopyWith<$Res> {
  __$ReadCopyWithImpl(this._self, this._then);

  final _Read _self;
  final $Res Function(_Read) _then;

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? provider = null,}) {
  return _then(_Read(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as KomikuDetailChapterModel,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}

/// Create a copy of KomikDetailFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailChapterModelCopyWith<$Res> get item {
  
  return $KomikuDetailChapterModelCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc
mixin _$KomikDetailFetchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikDetailFetchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikDetailFetchState()';
}


}

/// @nodoc
class $KomikDetailFetchStateCopyWith<$Res>  {
$KomikDetailFetchStateCopyWith(KomikDetailFetchState _, $Res Function(KomikDetailFetchState) __);
}


/// Adds pattern-matching-related methods to [KomikDetailFetchState].
extension KomikDetailFetchStatePatterns on KomikDetailFetchState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( KomikuDetailModel komikuDetailModel,  String errorMessage)?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.komikuDetailModel,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( KomikuDetailModel komikuDetailModel,  String errorMessage)  completed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Completed():
return completed(_that.komikuDetailModel,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( KomikuDetailModel komikuDetailModel,  String errorMessage)?  completed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.komikuDetailModel,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements KomikDetailFetchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikDetailFetchState.initial()';
}


}




/// @nodoc


class _Loading implements KomikDetailFetchState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikDetailFetchState.loading()';
}


}




/// @nodoc


class _Completed implements KomikDetailFetchState {
  const _Completed({required this.komikuDetailModel, this.errorMessage = ""});
  

 final  KomikuDetailModel komikuDetailModel;
@JsonKey() final  String errorMessage;

/// Create a copy of KomikDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.komikuDetailModel, komikuDetailModel) || other.komikuDetailModel == komikuDetailModel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,komikuDetailModel,errorMessage);

@override
String toString() {
  return 'KomikDetailFetchState.completed(komikuDetailModel: $komikuDetailModel, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $KomikDetailFetchStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 KomikuDetailModel komikuDetailModel, String errorMessage
});


$KomikuDetailModelCopyWith<$Res> get komikuDetailModel;

}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of KomikDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? komikuDetailModel = null,Object? errorMessage = null,}) {
  return _then(_Completed(
komikuDetailModel: null == komikuDetailModel ? _self.komikuDetailModel : komikuDetailModel // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of KomikDetailFetchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res> get komikuDetailModel {
  
  return $KomikuDetailModelCopyWith<$Res>(_self.komikuDetailModel, (value) {
    return _then(_self.copyWith(komikuDetailModel: value));
  });
}
}

// dart format on
