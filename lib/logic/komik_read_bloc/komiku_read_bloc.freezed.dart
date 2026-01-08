// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomikuReadEvent {

 KomikuDetailModel get komikuData; String get chapterParam;
/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuReadEventCopyWith<KomikuReadEvent> get copyWith => _$KomikuReadEventCopyWithImpl<KomikuReadEvent>(this as KomikuReadEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuReadEvent&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData)&&(identical(other.chapterParam, chapterParam) || other.chapterParam == chapterParam));
}


@override
int get hashCode => Object.hash(runtimeType,komikuData,chapterParam);

@override
String toString() {
  return 'KomikuReadEvent(komikuData: $komikuData, chapterParam: $chapterParam)';
}


}

/// @nodoc
abstract mixin class $KomikuReadEventCopyWith<$Res>  {
  factory $KomikuReadEventCopyWith(KomikuReadEvent value, $Res Function(KomikuReadEvent) _then) = _$KomikuReadEventCopyWithImpl;
@useResult
$Res call({
 KomikuDetailModel komikuData, String chapterParam
});


$KomikuDetailModelCopyWith<$Res> get komikuData;

}
/// @nodoc
class _$KomikuReadEventCopyWithImpl<$Res>
    implements $KomikuReadEventCopyWith<$Res> {
  _$KomikuReadEventCopyWithImpl(this._self, this._then);

  final KomikuReadEvent _self;
  final $Res Function(KomikuReadEvent) _then;

/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? komikuData = null,Object? chapterParam = null,}) {
  return _then(_self.copyWith(
komikuData: null == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel,chapterParam: null == chapterParam ? _self.chapterParam : chapterParam // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res> get komikuData {
  
  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}


/// Adds pattern-matching-related methods to [KomikuReadEvent].
extension KomikuReadEventPatterns on KomikuReadEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarkAsRead value)?  markAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarkAsRead value)  markAsRead,}){
final _that = this;
switch (_that) {
case _MarkAsRead():
return markAsRead(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarkAsRead value)?  markAsRead,}){
final _that = this;
switch (_that) {
case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KomikuDetailModel komikuData,  String chapterParam)?  markAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.komikuData,_that.chapterParam);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KomikuDetailModel komikuData,  String chapterParam)  markAsRead,}) {final _that = this;
switch (_that) {
case _MarkAsRead():
return markAsRead(_that.komikuData,_that.chapterParam);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KomikuDetailModel komikuData,  String chapterParam)?  markAsRead,}) {final _that = this;
switch (_that) {
case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.komikuData,_that.chapterParam);case _:
  return null;

}
}

}

/// @nodoc


class _MarkAsRead implements KomikuReadEvent {
  const _MarkAsRead({required this.komikuData, required this.chapterParam});
  

@override final  KomikuDetailModel komikuData;
@override final  String chapterParam;

/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkAsReadCopyWith<_MarkAsRead> get copyWith => __$MarkAsReadCopyWithImpl<_MarkAsRead>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkAsRead&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData)&&(identical(other.chapterParam, chapterParam) || other.chapterParam == chapterParam));
}


@override
int get hashCode => Object.hash(runtimeType,komikuData,chapterParam);

@override
String toString() {
  return 'KomikuReadEvent.markAsRead(komikuData: $komikuData, chapterParam: $chapterParam)';
}


}

/// @nodoc
abstract mixin class _$MarkAsReadCopyWith<$Res> implements $KomikuReadEventCopyWith<$Res> {
  factory _$MarkAsReadCopyWith(_MarkAsRead value, $Res Function(_MarkAsRead) _then) = __$MarkAsReadCopyWithImpl;
@override @useResult
$Res call({
 KomikuDetailModel komikuData, String chapterParam
});


@override $KomikuDetailModelCopyWith<$Res> get komikuData;

}
/// @nodoc
class __$MarkAsReadCopyWithImpl<$Res>
    implements _$MarkAsReadCopyWith<$Res> {
  __$MarkAsReadCopyWithImpl(this._self, this._then);

  final _MarkAsRead _self;
  final $Res Function(_MarkAsRead) _then;

/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? komikuData = null,Object? chapterParam = null,}) {
  return _then(_MarkAsRead(
komikuData: null == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel,chapterParam: null == chapterParam ? _self.chapterParam : chapterParam // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of KomikuReadEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res> get komikuData {
  
  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}

/// @nodoc
mixin _$KomikuReadState {

 List<KomikuDetailModel> get komikuList;
/// Create a copy of KomikuReadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuReadStateCopyWith<KomikuReadState> get copyWith => _$KomikuReadStateCopyWithImpl<KomikuReadState>(this as KomikuReadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuReadState&&const DeepCollectionEquality().equals(other.komikuList, komikuList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(komikuList));

@override
String toString() {
  return 'KomikuReadState(komikuList: $komikuList)';
}


}

/// @nodoc
abstract mixin class $KomikuReadStateCopyWith<$Res>  {
  factory $KomikuReadStateCopyWith(KomikuReadState value, $Res Function(KomikuReadState) _then) = _$KomikuReadStateCopyWithImpl;
@useResult
$Res call({
 List<KomikuDetailModel> komikuList
});




}
/// @nodoc
class _$KomikuReadStateCopyWithImpl<$Res>
    implements $KomikuReadStateCopyWith<$Res> {
  _$KomikuReadStateCopyWithImpl(this._self, this._then);

  final KomikuReadState _self;
  final $Res Function(KomikuReadState) _then;

/// Create a copy of KomikuReadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? komikuList = null,}) {
  return _then(_self.copyWith(
komikuList: null == komikuList ? _self.komikuList : komikuList // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuReadState].
extension KomikuReadStatePatterns on KomikuReadState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<KomikuDetailModel> komikuList)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.komikuList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<KomikuDetailModel> komikuList)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.komikuList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<KomikuDetailModel> komikuList)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.komikuList);case _:
  return null;

}
}

}

/// @nodoc


class _State implements KomikuReadState {
  const _State({final  List<KomikuDetailModel> komikuList = const []}): _komikuList = komikuList;
  

 final  List<KomikuDetailModel> _komikuList;
@override@JsonKey() List<KomikuDetailModel> get komikuList {
  if (_komikuList is EqualUnmodifiableListView) return _komikuList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_komikuList);
}


/// Create a copy of KomikuReadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&const DeepCollectionEquality().equals(other._komikuList, _komikuList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_komikuList));

@override
String toString() {
  return 'KomikuReadState.state(komikuList: $komikuList)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $KomikuReadStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 List<KomikuDetailModel> komikuList
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of KomikuReadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? komikuList = null,}) {
  return _then(_State(
komikuList: null == komikuList ? _self._komikuList : komikuList // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailModel>,
  ));
}


}

// dart format on
