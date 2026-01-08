// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_list_komik_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomikuListKomikFetchEvent implements DiagnosticableTreeMixin {

 MangaProvider get provider;
/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuListKomikFetchEventCopyWith<KomikuListKomikFetchEvent> get copyWith => _$KomikuListKomikFetchEventCopyWithImpl<KomikuListKomikFetchEvent>(this as KomikuListKomikFetchEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchEvent'))
    ..add(DiagnosticsProperty('provider', provider));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuListKomikFetchEvent&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,provider);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchEvent(provider: $provider)';
}


}

/// @nodoc
abstract mixin class $KomikuListKomikFetchEventCopyWith<$Res>  {
  factory $KomikuListKomikFetchEventCopyWith(KomikuListKomikFetchEvent value, $Res Function(KomikuListKomikFetchEvent) _then) = _$KomikuListKomikFetchEventCopyWithImpl;
@useResult
$Res call({
 MangaProvider provider
});




}
/// @nodoc
class _$KomikuListKomikFetchEventCopyWithImpl<$Res>
    implements $KomikuListKomikFetchEventCopyWith<$Res> {
  _$KomikuListKomikFetchEventCopyWithImpl(this._self, this._then);

  final KomikuListKomikFetchEvent _self;
  final $Res Function(KomikuListKomikFetchEvent) _then;

/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuListKomikFetchEvent].
extension KomikuListKomikFetchEventPatterns on KomikuListKomikFetchEvent {
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
return loadMore(_that);}
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MangaProvider provider)?  started,TResult Function( String tag,  String nextLink,  MangaProvider provider)?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.provider);case _LoadMore() when loadMore != null:
return loadMore(_that.tag,_that.nextLink,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MangaProvider provider)  started,required TResult Function( String tag,  String nextLink,  MangaProvider provider)  loadMore,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.provider);case _LoadMore():
return loadMore(_that.tag,_that.nextLink,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MangaProvider provider)?  started,TResult? Function( String tag,  String nextLink,  MangaProvider provider)?  loadMore,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.provider);case _LoadMore() when loadMore != null:
return loadMore(_that.tag,_that.nextLink,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _Started with DiagnosticableTreeMixin implements KomikuListKomikFetchEvent {
  const _Started({this.provider = MangaProvider.komiku});
  

@override@JsonKey() final  MangaProvider provider;

/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchEvent.started'))
    ..add(DiagnosticsProperty('provider', provider));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,provider);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchEvent.started(provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $KomikuListKomikFetchEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 MangaProvider provider
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,}) {
  return _then(_Started(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}


}

/// @nodoc


class _LoadMore with DiagnosticableTreeMixin implements KomikuListKomikFetchEvent {
  const _LoadMore({required this.tag, required this.nextLink, this.provider = MangaProvider.komiku});
  

 final  String tag;
 final  String nextLink;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreCopyWith<_LoadMore> get copyWith => __$LoadMoreCopyWithImpl<_LoadMore>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchEvent.loadMore'))
    ..add(DiagnosticsProperty('tag', tag))..add(DiagnosticsProperty('nextLink', nextLink))..add(DiagnosticsProperty('provider', provider));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.nextLink, nextLink) || other.nextLink == nextLink)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,tag,nextLink,provider);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchEvent.loadMore(tag: $tag, nextLink: $nextLink, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreCopyWith<$Res> implements $KomikuListKomikFetchEventCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) _then) = __$LoadMoreCopyWithImpl;
@override @useResult
$Res call({
 String tag, String nextLink, MangaProvider provider
});




}
/// @nodoc
class __$LoadMoreCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(this._self, this._then);

  final _LoadMore _self;
  final $Res Function(_LoadMore) _then;

/// Create a copy of KomikuListKomikFetchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tag = null,Object? nextLink = null,Object? provider = null,}) {
  return _then(_LoadMore(
tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,nextLink: null == nextLink ? _self.nextLink : nextLink // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}


}

/// @nodoc
mixin _$KomikuListKomikFetchState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuListKomikFetchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchState()';
}


}

/// @nodoc
class $KomikuListKomikFetchStateCopyWith<$Res>  {
$KomikuListKomikFetchStateCopyWith(KomikuListKomikFetchState _, $Res Function(KomikuListKomikFetchState) __);
}


/// Adds pattern-matching-related methods to [KomikuListKomikFetchState].
extension KomikuListKomikFetchStatePatterns on KomikuListKomikFetchState {
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
return completed(_that);}
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( KomikuListModel recommendationList,  bool isLoadMore,  String? errorMsg)?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.recommendationList,_that.isLoadMore,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( KomikuListModel recommendationList,  bool isLoadMore,  String? errorMsg)  completed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Completed():
return completed(_that.recommendationList,_that.isLoadMore,_that.errorMsg);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( KomikuListModel recommendationList,  bool isLoadMore,  String? errorMsg)?  completed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Completed() when completed != null:
return completed(_that.recommendationList,_that.isLoadMore,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements KomikuListKomikFetchState {
  const _Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchState.initial()';
}


}




/// @nodoc


class _Loading with DiagnosticableTreeMixin implements KomikuListKomikFetchState {
  const _Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchState.loading()';
}


}




/// @nodoc


class _Completed with DiagnosticableTreeMixin implements KomikuListKomikFetchState {
  const _Completed({required this.recommendationList, this.isLoadMore = false, this.errorMsg});
  

 final  KomikuListModel recommendationList;
@JsonKey() final  bool isLoadMore;
 final  String? errorMsg;

/// Create a copy of KomikuListKomikFetchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletedCopyWith<_Completed> get copyWith => __$CompletedCopyWithImpl<_Completed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'KomikuListKomikFetchState.completed'))
    ..add(DiagnosticsProperty('recommendationList', recommendationList))..add(DiagnosticsProperty('isLoadMore', isLoadMore))..add(DiagnosticsProperty('errorMsg', errorMsg));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed&&(identical(other.recommendationList, recommendationList) || other.recommendationList == recommendationList)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,recommendationList,isLoadMore,errorMsg);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'KomikuListKomikFetchState.completed(recommendationList: $recommendationList, isLoadMore: $isLoadMore, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$CompletedCopyWith<$Res> implements $KomikuListKomikFetchStateCopyWith<$Res> {
  factory _$CompletedCopyWith(_Completed value, $Res Function(_Completed) _then) = __$CompletedCopyWithImpl;
@useResult
$Res call({
 KomikuListModel recommendationList, bool isLoadMore, String? errorMsg
});


$KomikuListModelCopyWith<$Res> get recommendationList;

}
/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(this._self, this._then);

  final _Completed _self;
  final $Res Function(_Completed) _then;

/// Create a copy of KomikuListKomikFetchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recommendationList = null,Object? isLoadMore = null,Object? errorMsg = freezed,}) {
  return _then(_Completed(
recommendationList: null == recommendationList ? _self.recommendationList : recommendationList // ignore: cast_nullable_to_non_nullable
as KomikuListModel,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of KomikuListKomikFetchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuListModelCopyWith<$Res> get recommendationList {
  
  return $KomikuListModelCopyWith<$Res>(_self.recommendationList, (value) {
    return _then(_self.copyWith(recommendationList: value));
  });
}
}

// dart format on
