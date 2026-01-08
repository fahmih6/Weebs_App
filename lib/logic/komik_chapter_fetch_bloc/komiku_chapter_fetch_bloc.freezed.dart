// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_chapter_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomikuChapterFetchEvent {

 String get param; MangaProvider get provider;
/// Create a copy of KomikuChapterFetchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuChapterFetchEventCopyWith<KomikuChapterFetchEvent> get copyWith => _$KomikuChapterFetchEventCopyWithImpl<KomikuChapterFetchEvent>(this as KomikuChapterFetchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuChapterFetchEvent&&(identical(other.param, param) || other.param == param)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,param,provider);

@override
String toString() {
  return 'KomikuChapterFetchEvent(param: $param, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $KomikuChapterFetchEventCopyWith<$Res>  {
  factory $KomikuChapterFetchEventCopyWith(KomikuChapterFetchEvent value, $Res Function(KomikuChapterFetchEvent) _then) = _$KomikuChapterFetchEventCopyWithImpl;
@useResult
$Res call({
 String param, MangaProvider provider
});




}
/// @nodoc
class _$KomikuChapterFetchEventCopyWithImpl<$Res>
    implements $KomikuChapterFetchEventCopyWith<$Res> {
  _$KomikuChapterFetchEventCopyWithImpl(this._self, this._then);

  final KomikuChapterFetchEvent _self;
  final $Res Function(KomikuChapterFetchEvent) _then;

/// Create a copy of KomikuChapterFetchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? param = null,Object? provider = null,}) {
  return _then(_self.copyWith(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuChapterFetchEvent].
extension KomikuChapterFetchEventPatterns on KomikuChapterFetchEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String param,  MangaProvider provider)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String param,  MangaProvider provider)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.param,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String param,  MangaProvider provider)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.param,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements KomikuChapterFetchEvent {
  const _Started({required this.param, this.provider = MangaProvider.komiku});
  

@override final  String param;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of KomikuChapterFetchEvent
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
  return 'KomikuChapterFetchEvent.started(param: $param, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $KomikuChapterFetchEventCopyWith<$Res> {
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

/// Create a copy of KomikuChapterFetchEvent
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
mixin _$KomikuChapterFetchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuChapterFetchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikuChapterFetchState()';
}


}

/// @nodoc
class $KomikuChapterFetchStateCopyWith<$Res>  {
$KomikuChapterFetchStateCopyWith(KomikuChapterFetchState _, $Res Function(KomikuChapterFetchState) __);
}


/// Adds pattern-matching-related methods to [KomikuChapterFetchState].
extension KomikuChapterFetchStatePatterns on KomikuChapterFetchState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool isLoadMore,  String errorMessage,  List<KomikuChapterFetchModel> chapterData)?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.isLoadMore,_that.errorMessage,_that.chapterData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool isLoadMore,  String errorMessage,  List<KomikuChapterFetchModel> chapterData)  completed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Completed():
return completed(_that.isLoadMore,_that.errorMessage,_that.chapterData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool isLoadMore,  String errorMessage,  List<KomikuChapterFetchModel> chapterData)?  completed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.isLoadMore,_that.errorMessage,_that.chapterData);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements KomikuChapterFetchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikuChapterFetchState.initial()';
}


}




/// @nodoc


class _Loading implements KomikuChapterFetchState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KomikuChapterFetchState.loading()';
}


}




/// @nodoc


class _Completed implements KomikuChapterFetchState {
  const _Completed({this.isLoadMore = false, this.errorMessage = "", final  List<KomikuChapterFetchModel> chapterData = const []}): _chapterData = chapterData;
  

@JsonKey() final  bool isLoadMore;
@JsonKey() final  String errorMessage;
 final  List<KomikuChapterFetchModel> _chapterData;
@JsonKey() List<KomikuChapterFetchModel> get chapterData {
  if (_chapterData is EqualUnmodifiableListView) return _chapterData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chapterData);
}


/// Create a copy of KomikuChapterFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._chapterData, _chapterData));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadMore,errorMessage,const DeepCollectionEquality().hash(_chapterData));

@override
String toString() {
  return 'KomikuChapterFetchState.completed(isLoadMore: $isLoadMore, errorMessage: $errorMessage, chapterData: $chapterData)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $KomikuChapterFetchStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 bool isLoadMore, String errorMessage, List<KomikuChapterFetchModel> chapterData
});




}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of KomikuChapterFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoadMore = null,Object? errorMessage = null,Object? chapterData = null,}) {
  return _then(_Completed(
isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,chapterData: null == chapterData ? _self._chapterData : chapterData // ignore: cast_nullable_to_non_nullable
as List<KomikuChapterFetchModel>,
  ));
}


}

// dart format on
