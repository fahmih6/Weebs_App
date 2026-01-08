// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnoboyFetchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyFetchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyFetchEvent()';
}


}

/// @nodoc
class $AnoboyFetchEventCopyWith<$Res>  {
$AnoboyFetchEventCopyWith(AnoboyFetchEvent _, $Res Function(AnoboyFetchEvent) __);
}


/// Adds pattern-matching-related methods to [AnoboyFetchEvent].
extension AnoboyFetchEventPatterns on AnoboyFetchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadMore():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String nextLink)?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadMore() when loadMore != null:
return loadMore(_that.nextLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String nextLink)  loadMore,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadMore():
return loadMore(_that.nextLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String nextLink)?  loadMore,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadMore() when loadMore != null:
return loadMore(_that.nextLink);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AnoboyFetchEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyFetchEvent.started()';
}


}




/// @nodoc


class _LoadMore implements AnoboyFetchEvent {
  const _LoadMore({required this.nextLink});
  

 final  String nextLink;

/// Create a copy of AnoboyFetchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreCopyWith<_LoadMore> get copyWith => __$LoadMoreCopyWithImpl<_LoadMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore&&(identical(other.nextLink, nextLink) || other.nextLink == nextLink));
}


@override
int get hashCode => Object.hash(runtimeType,nextLink);

@override
String toString() {
  return 'AnoboyFetchEvent.loadMore(nextLink: $nextLink)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreCopyWith<$Res> implements $AnoboyFetchEventCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) _then) = __$LoadMoreCopyWithImpl;
@useResult
$Res call({
 String nextLink
});




}
/// @nodoc
class __$LoadMoreCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(this._self, this._then);

  final _LoadMore _self;
  final $Res Function(_LoadMore) _then;

/// Create a copy of AnoboyFetchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nextLink = null,}) {
  return _then(_LoadMore(
nextLink: null == nextLink ? _self.nextLink : nextLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AnoboyFetchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyFetchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyFetchState()';
}


}

/// @nodoc
class $AnoboyFetchStateCopyWith<$Res>  {
$AnoboyFetchStateCopyWith(AnoboyFetchState _, $Res Function(AnoboyFetchState) __);
}


/// Adds pattern-matching-related methods to [AnoboyFetchState].
extension AnoboyFetchStatePatterns on AnoboyFetchState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( AnoboyListModel animeList)?  loading,TResult Function( AnoboyListModel animeList,  bool isLoadMore,  String errorMsg)?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.animeList);case _Completed() when completed != null:
return completed(_that.animeList,_that.isLoadMore,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( AnoboyListModel animeList)  loading,required TResult Function( AnoboyListModel animeList,  bool isLoadMore,  String errorMsg)  completed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading(_that.animeList);case _Completed():
return completed(_that.animeList,_that.isLoadMore,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( AnoboyListModel animeList)?  loading,TResult? Function( AnoboyListModel animeList,  bool isLoadMore,  String errorMsg)?  completed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.animeList);case _Completed() when completed != null:
return completed(_that.animeList,_that.isLoadMore,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AnoboyFetchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnoboyFetchState.initial()';
}


}




/// @nodoc


class _Loading implements AnoboyFetchState {
  const _Loading({required this.animeList});
  

 final  AnoboyListModel animeList;

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.animeList, animeList) || other.animeList == animeList));
}


@override
int get hashCode => Object.hash(runtimeType,animeList);

@override
String toString() {
  return 'AnoboyFetchState.loading(animeList: $animeList)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $AnoboyFetchStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@useResult
$Res call({
 AnoboyListModel animeList
});


$AnoboyListModelCopyWith<$Res> get animeList;

}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? animeList = null,}) {
  return _then(_Loading(
animeList: null == animeList ? _self.animeList : animeList // ignore: cast_nullable_to_non_nullable
as AnoboyListModel,
  ));
}

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyListModelCopyWith<$Res> get animeList {
  
  return $AnoboyListModelCopyWith<$Res>(_self.animeList, (value) {
    return _then(_self.copyWith(animeList: value));
  });
}
}

/// @nodoc


class _Completed implements AnoboyFetchState {
  const _Completed({required this.animeList, this.isLoadMore = false, this.errorMsg = ""});
  

 final  AnoboyListModel animeList;
@JsonKey() final  bool isLoadMore;
@JsonKey() final  String errorMsg;

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.animeList, animeList) || other.animeList == animeList)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,animeList,isLoadMore,errorMsg);

@override
String toString() {
  return 'AnoboyFetchState.completed(animeList: $animeList, isLoadMore: $isLoadMore, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $AnoboyFetchStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 AnoboyListModel animeList, bool isLoadMore, String errorMsg
});


$AnoboyListModelCopyWith<$Res> get animeList;

}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? animeList = null,Object? isLoadMore = null,Object? errorMsg = null,}) {
  return _then(_Completed(
animeList: null == animeList ? _self.animeList : animeList // ignore: cast_nullable_to_non_nullable
as AnoboyListModel,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,errorMsg: null == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AnoboyFetchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyListModelCopyWith<$Res> get animeList {
  
  return $AnoboyListModelCopyWith<$Res>(_self.animeList, (value) {
    return _then(_self.copyWith(animeList: value));
  });
}
}

// dart format on
