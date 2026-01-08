// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {

 String get currentRouteName; MangaProvider get provider;
/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchEventCopyWith<SearchEvent> get copyWith => _$SearchEventCopyWithImpl<SearchEvent>(this as SearchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent&&(identical(other.currentRouteName, currentRouteName) || other.currentRouteName == currentRouteName)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,currentRouteName,provider);

@override
String toString() {
  return 'SearchEvent(currentRouteName: $currentRouteName, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SearchEventCopyWith<$Res>  {
  factory $SearchEventCopyWith(SearchEvent value, $Res Function(SearchEvent) _then) = _$SearchEventCopyWithImpl;
@useResult
$Res call({
 String currentRouteName, MangaProvider provider
});




}
/// @nodoc
class _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._self, this._then);

  final SearchEvent _self;
  final $Res Function(SearchEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentRouteName = null,Object? provider = null,}) {
  return _then(_self.copyWith(
currentRouteName: null == currentRouteName ? _self.currentRouteName : currentRouteName // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String currentRouteName,  String keyword,  MangaProvider provider)?  started,TResult Function( String currentRouteName,  MangaProvider provider)?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.currentRouteName,_that.keyword,_that.provider);case _LoadMore() when loadMore != null:
return loadMore(_that.currentRouteName,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String currentRouteName,  String keyword,  MangaProvider provider)  started,required TResult Function( String currentRouteName,  MangaProvider provider)  loadMore,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.currentRouteName,_that.keyword,_that.provider);case _LoadMore():
return loadMore(_that.currentRouteName,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String currentRouteName,  String keyword,  MangaProvider provider)?  started,TResult? Function( String currentRouteName,  MangaProvider provider)?  loadMore,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.currentRouteName,_that.keyword,_that.provider);case _LoadMore() when loadMore != null:
return loadMore(_that.currentRouteName,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SearchEvent {
  const _Started({required this.currentRouteName, required this.keyword, this.provider = MangaProvider.komiku});
  

@override final  String currentRouteName;
 final  String keyword;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.currentRouteName, currentRouteName) || other.currentRouteName == currentRouteName)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,currentRouteName,keyword,provider);

@override
String toString() {
  return 'SearchEvent.started(currentRouteName: $currentRouteName, keyword: $keyword, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 String currentRouteName, String keyword, MangaProvider provider
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentRouteName = null,Object? keyword = null,Object? provider = null,}) {
  return _then(_Started(
currentRouteName: null == currentRouteName ? _self.currentRouteName : currentRouteName // ignore: cast_nullable_to_non_nullable
as String,keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}


}

/// @nodoc


class _LoadMore implements SearchEvent {
  const _LoadMore({required this.currentRouteName, this.provider = MangaProvider.komiku});
  

@override final  String currentRouteName;
@override@JsonKey() final  MangaProvider provider;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreCopyWith<_LoadMore> get copyWith => __$LoadMoreCopyWithImpl<_LoadMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore&&(identical(other.currentRouteName, currentRouteName) || other.currentRouteName == currentRouteName)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,currentRouteName,provider);

@override
String toString() {
  return 'SearchEvent.loadMore(currentRouteName: $currentRouteName, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) _then) = __$LoadMoreCopyWithImpl;
@override @useResult
$Res call({
 String currentRouteName, MangaProvider provider
});




}
/// @nodoc
class __$LoadMoreCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(this._self, this._then);

  final _LoadMore _self;
  final $Res Function(_LoadMore) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentRouteName = null,Object? provider = null,}) {
  return _then(_LoadMore(
currentRouteName: null == currentRouteName ? _self.currentRouteName : currentRouteName // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as MangaProvider,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 bool get isLoading; bool get isLoadMore; KomikuListModel get komikResult; AnoboyListModel get anoboyResult;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.komikResult, komikResult) || other.komikResult == komikResult)&&(identical(other.anoboyResult, anoboyResult) || other.anoboyResult == anoboyResult));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,komikResult,anoboyResult);

@override
String toString() {
  return 'SearchState(isLoading: $isLoading, isLoadMore: $isLoadMore, komikResult: $komikResult, anoboyResult: $anoboyResult)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoadMore, KomikuListModel komikResult, AnoboyListModel anoboyResult
});


$KomikuListModelCopyWith<$Res> get komikResult;$AnoboyListModelCopyWith<$Res> get anoboyResult;

}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? komikResult = null,Object? anoboyResult = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,komikResult: null == komikResult ? _self.komikResult : komikResult // ignore: cast_nullable_to_non_nullable
as KomikuListModel,anoboyResult: null == anoboyResult ? _self.anoboyResult : anoboyResult // ignore: cast_nullable_to_non_nullable
as AnoboyListModel,
  ));
}
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuListModelCopyWith<$Res> get komikResult {
  
  return $KomikuListModelCopyWith<$Res>(_self.komikResult, (value) {
    return _then(_self.copyWith(komikResult: value));
  });
}/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyListModelCopyWith<$Res> get anoboyResult {
  
  return $AnoboyListModelCopyWith<$Res>(_self.anoboyResult, (value) {
    return _then(_self.copyWith(anoboyResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  bool isLoadMore,  KomikuListModel komikResult,  AnoboyListModel anoboyResult)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.isLoading,_that.isLoadMore,_that.komikResult,_that.anoboyResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  bool isLoadMore,  KomikuListModel komikResult,  AnoboyListModel anoboyResult)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.isLoading,_that.isLoadMore,_that.komikResult,_that.anoboyResult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  bool isLoadMore,  KomikuListModel komikResult,  AnoboyListModel anoboyResult)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.isLoading,_that.isLoadMore,_that.komikResult,_that.anoboyResult);case _:
  return null;

}
}

}

/// @nodoc


class _State implements SearchState {
  const _State({this.isLoading = false, this.isLoadMore = false, this.komikResult = const KomikuListModel(), this.anoboyResult = const AnoboyListModel()});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadMore;
@override@JsonKey() final  KomikuListModel komikResult;
@override@JsonKey() final  AnoboyListModel anoboyResult;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.komikResult, komikResult) || other.komikResult == komikResult)&&(identical(other.anoboyResult, anoboyResult) || other.anoboyResult == anoboyResult));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadMore,komikResult,anoboyResult);

@override
String toString() {
  return 'SearchState.state(isLoading: $isLoading, isLoadMore: $isLoadMore, komikResult: $komikResult, anoboyResult: $anoboyResult)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoadMore, KomikuListModel komikResult, AnoboyListModel anoboyResult
});


@override $KomikuListModelCopyWith<$Res> get komikResult;@override $AnoboyListModelCopyWith<$Res> get anoboyResult;

}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoadMore = null,Object? komikResult = null,Object? anoboyResult = null,}) {
  return _then(_State(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,komikResult: null == komikResult ? _self.komikResult : komikResult // ignore: cast_nullable_to_non_nullable
as KomikuListModel,anoboyResult: null == anoboyResult ? _self.anoboyResult : anoboyResult // ignore: cast_nullable_to_non_nullable
as AnoboyListModel,
  ));
}

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuListModelCopyWith<$Res> get komikResult {
  
  return $KomikuListModelCopyWith<$Res>(_self.komikResult, (value) {
    return _then(_self.copyWith(komikResult: value));
  });
}/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyListModelCopyWith<$Res> get anoboyResult {
  
  return $AnoboyListModelCopyWith<$Res>(_self.anoboyResult, (value) {
    return _then(_self.copyWith(anoboyResult: value));
  });
}
}

// dart format on
