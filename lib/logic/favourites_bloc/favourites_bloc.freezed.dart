// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouritesEvent {

 AnoboyDetailModel? get anoboyData; KomikuDetailModel? get komikuData;
/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouritesEventCopyWith<FavouritesEvent> get copyWith => _$FavouritesEventCopyWithImpl<FavouritesEvent>(this as FavouritesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesEvent&&(identical(other.anoboyData, anoboyData) || other.anoboyData == anoboyData)&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyData,komikuData);

@override
String toString() {
  return 'FavouritesEvent(anoboyData: $anoboyData, komikuData: $komikuData)';
}


}

/// @nodoc
abstract mixin class $FavouritesEventCopyWith<$Res>  {
  factory $FavouritesEventCopyWith(FavouritesEvent value, $Res Function(FavouritesEvent) _then) = _$FavouritesEventCopyWithImpl;
@useResult
$Res call({
 AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData
});


$AnoboyDetailModelCopyWith<$Res>? get anoboyData;$KomikuDetailModelCopyWith<$Res>? get komikuData;

}
/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._self, this._then);

  final FavouritesEvent _self;
  final $Res Function(FavouritesEvent) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anoboyData = freezed,Object? komikuData = freezed,}) {
  return _then(_self.copyWith(
anoboyData: freezed == anoboyData ? _self.anoboyData : anoboyData // ignore: cast_nullable_to_non_nullable
as AnoboyDetailModel?,komikuData: freezed == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel?,
  ));
}
/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<$Res>? get anoboyData {
    if (_self.anoboyData == null) {
    return null;
  }

  return $AnoboyDetailModelCopyWith<$Res>(_self.anoboyData!, (value) {
    return _then(_self.copyWith(anoboyData: value));
  });
}/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res>? get komikuData {
    if (_self.komikuData == null) {
    return null;
  }

  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData!, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavouritesEvent].
extension FavouritesEventPatterns on FavouritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Added value)?  added,TResult Function( _Removed value)?  removed,TResult Function( _Edited value)?  edited,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Added() when added != null:
return added(_that);case _Removed() when removed != null:
return removed(_that);case _Edited() when edited != null:
return edited(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Added value)  added,required TResult Function( _Removed value)  removed,required TResult Function( _Edited value)  edited,}){
final _that = this;
switch (_that) {
case _Added():
return added(_that);case _Removed():
return removed(_that);case _Edited():
return edited(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Added value)?  added,TResult? Function( _Removed value)?  removed,TResult? Function( _Edited value)?  edited,}){
final _that = this;
switch (_that) {
case _Added() when added != null:
return added(_that);case _Removed() when removed != null:
return removed(_that);case _Edited() when edited != null:
return edited(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  added,TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  removed,TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  edited,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Added() when added != null:
return added(_that.anoboyData,_that.komikuData);case _Removed() when removed != null:
return removed(_that.anoboyData,_that.komikuData);case _Edited() when edited != null:
return edited(_that.anoboyData,_that.komikuData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)  added,required TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)  removed,required TResult Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)  edited,}) {final _that = this;
switch (_that) {
case _Added():
return added(_that.anoboyData,_that.komikuData);case _Removed():
return removed(_that.anoboyData,_that.komikuData);case _Edited():
return edited(_that.anoboyData,_that.komikuData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  added,TResult? Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  removed,TResult? Function( AnoboyDetailModel? anoboyData,  KomikuDetailModel? komikuData)?  edited,}) {final _that = this;
switch (_that) {
case _Added() when added != null:
return added(_that.anoboyData,_that.komikuData);case _Removed() when removed != null:
return removed(_that.anoboyData,_that.komikuData);case _Edited() when edited != null:
return edited(_that.anoboyData,_that.komikuData);case _:
  return null;

}
}

}

/// @nodoc


class _Added implements FavouritesEvent {
  const _Added({this.anoboyData, this.komikuData});
  

@override final  AnoboyDetailModel? anoboyData;
@override final  KomikuDetailModel? komikuData;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddedCopyWith<_Added> get copyWith => __$AddedCopyWithImpl<_Added>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Added&&(identical(other.anoboyData, anoboyData) || other.anoboyData == anoboyData)&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyData,komikuData);

@override
String toString() {
  return 'FavouritesEvent.added(anoboyData: $anoboyData, komikuData: $komikuData)';
}


}

/// @nodoc
abstract mixin class _$AddedCopyWith<$Res> implements $FavouritesEventCopyWith<$Res> {
  factory _$AddedCopyWith(_Added value, $Res Function(_Added) _then) = __$AddedCopyWithImpl;
@override @useResult
$Res call({
 AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData
});


@override $AnoboyDetailModelCopyWith<$Res>? get anoboyData;@override $KomikuDetailModelCopyWith<$Res>? get komikuData;

}
/// @nodoc
class __$AddedCopyWithImpl<$Res>
    implements _$AddedCopyWith<$Res> {
  __$AddedCopyWithImpl(this._self, this._then);

  final _Added _self;
  final $Res Function(_Added) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anoboyData = freezed,Object? komikuData = freezed,}) {
  return _then(_Added(
anoboyData: freezed == anoboyData ? _self.anoboyData : anoboyData // ignore: cast_nullable_to_non_nullable
as AnoboyDetailModel?,komikuData: freezed == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel?,
  ));
}

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<$Res>? get anoboyData {
    if (_self.anoboyData == null) {
    return null;
  }

  return $AnoboyDetailModelCopyWith<$Res>(_self.anoboyData!, (value) {
    return _then(_self.copyWith(anoboyData: value));
  });
}/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res>? get komikuData {
    if (_self.komikuData == null) {
    return null;
  }

  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData!, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}

/// @nodoc


class _Removed implements FavouritesEvent {
  const _Removed({this.anoboyData, this.komikuData});
  

@override final  AnoboyDetailModel? anoboyData;
@override final  KomikuDetailModel? komikuData;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemovedCopyWith<_Removed> get copyWith => __$RemovedCopyWithImpl<_Removed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Removed&&(identical(other.anoboyData, anoboyData) || other.anoboyData == anoboyData)&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyData,komikuData);

@override
String toString() {
  return 'FavouritesEvent.removed(anoboyData: $anoboyData, komikuData: $komikuData)';
}


}

/// @nodoc
abstract mixin class _$RemovedCopyWith<$Res> implements $FavouritesEventCopyWith<$Res> {
  factory _$RemovedCopyWith(_Removed value, $Res Function(_Removed) _then) = __$RemovedCopyWithImpl;
@override @useResult
$Res call({
 AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData
});


@override $AnoboyDetailModelCopyWith<$Res>? get anoboyData;@override $KomikuDetailModelCopyWith<$Res>? get komikuData;

}
/// @nodoc
class __$RemovedCopyWithImpl<$Res>
    implements _$RemovedCopyWith<$Res> {
  __$RemovedCopyWithImpl(this._self, this._then);

  final _Removed _self;
  final $Res Function(_Removed) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anoboyData = freezed,Object? komikuData = freezed,}) {
  return _then(_Removed(
anoboyData: freezed == anoboyData ? _self.anoboyData : anoboyData // ignore: cast_nullable_to_non_nullable
as AnoboyDetailModel?,komikuData: freezed == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel?,
  ));
}

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<$Res>? get anoboyData {
    if (_self.anoboyData == null) {
    return null;
  }

  return $AnoboyDetailModelCopyWith<$Res>(_self.anoboyData!, (value) {
    return _then(_self.copyWith(anoboyData: value));
  });
}/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res>? get komikuData {
    if (_self.komikuData == null) {
    return null;
  }

  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData!, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}

/// @nodoc


class _Edited implements FavouritesEvent {
  const _Edited({this.anoboyData, this.komikuData});
  

@override final  AnoboyDetailModel? anoboyData;
@override final  KomikuDetailModel? komikuData;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditedCopyWith<_Edited> get copyWith => __$EditedCopyWithImpl<_Edited>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Edited&&(identical(other.anoboyData, anoboyData) || other.anoboyData == anoboyData)&&(identical(other.komikuData, komikuData) || other.komikuData == komikuData));
}


@override
int get hashCode => Object.hash(runtimeType,anoboyData,komikuData);

@override
String toString() {
  return 'FavouritesEvent.edited(anoboyData: $anoboyData, komikuData: $komikuData)';
}


}

/// @nodoc
abstract mixin class _$EditedCopyWith<$Res> implements $FavouritesEventCopyWith<$Res> {
  factory _$EditedCopyWith(_Edited value, $Res Function(_Edited) _then) = __$EditedCopyWithImpl;
@override @useResult
$Res call({
 AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData
});


@override $AnoboyDetailModelCopyWith<$Res>? get anoboyData;@override $KomikuDetailModelCopyWith<$Res>? get komikuData;

}
/// @nodoc
class __$EditedCopyWithImpl<$Res>
    implements _$EditedCopyWith<$Res> {
  __$EditedCopyWithImpl(this._self, this._then);

  final _Edited _self;
  final $Res Function(_Edited) _then;

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anoboyData = freezed,Object? komikuData = freezed,}) {
  return _then(_Edited(
anoboyData: freezed == anoboyData ? _self.anoboyData : anoboyData // ignore: cast_nullable_to_non_nullable
as AnoboyDetailModel?,komikuData: freezed == komikuData ? _self.komikuData : komikuData // ignore: cast_nullable_to_non_nullable
as KomikuDetailModel?,
  ));
}

/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnoboyDetailModelCopyWith<$Res>? get anoboyData {
    if (_self.anoboyData == null) {
    return null;
  }

  return $AnoboyDetailModelCopyWith<$Res>(_self.anoboyData!, (value) {
    return _then(_self.copyWith(anoboyData: value));
  });
}/// Create a copy of FavouritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<$Res>? get komikuData {
    if (_self.komikuData == null) {
    return null;
  }

  return $KomikuDetailModelCopyWith<$Res>(_self.komikuData!, (value) {
    return _then(_self.copyWith(komikuData: value));
  });
}
}

/// @nodoc
mixin _$FavouritesState {

 List<AnoboyDetailModel> get anoboyList; List<KomikuDetailModel> get komikuList;
/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouritesStateCopyWith<FavouritesState> get copyWith => _$FavouritesStateCopyWithImpl<FavouritesState>(this as FavouritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouritesState&&const DeepCollectionEquality().equals(other.anoboyList, anoboyList)&&const DeepCollectionEquality().equals(other.komikuList, komikuList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(anoboyList),const DeepCollectionEquality().hash(komikuList));

@override
String toString() {
  return 'FavouritesState(anoboyList: $anoboyList, komikuList: $komikuList)';
}


}

/// @nodoc
abstract mixin class $FavouritesStateCopyWith<$Res>  {
  factory $FavouritesStateCopyWith(FavouritesState value, $Res Function(FavouritesState) _then) = _$FavouritesStateCopyWithImpl;
@useResult
$Res call({
 List<AnoboyDetailModel> anoboyList, List<KomikuDetailModel> komikuList
});




}
/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._self, this._then);

  final FavouritesState _self;
  final $Res Function(FavouritesState) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anoboyList = null,Object? komikuList = null,}) {
  return _then(_self.copyWith(
anoboyList: null == anoboyList ? _self.anoboyList : anoboyList // ignore: cast_nullable_to_non_nullable
as List<AnoboyDetailModel>,komikuList: null == komikuList ? _self.komikuList : komikuList // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouritesState].
extension FavouritesStatePatterns on FavouritesState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<AnoboyDetailModel> anoboyList,  List<KomikuDetailModel> komikuList)?  state,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.anoboyList,_that.komikuList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<AnoboyDetailModel> anoboyList,  List<KomikuDetailModel> komikuList)  state,}) {final _that = this;
switch (_that) {
case _State():
return state(_that.anoboyList,_that.komikuList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<AnoboyDetailModel> anoboyList,  List<KomikuDetailModel> komikuList)?  state,}) {final _that = this;
switch (_that) {
case _State() when state != null:
return state(_that.anoboyList,_that.komikuList);case _:
  return null;

}
}

}

/// @nodoc


class _State implements FavouritesState {
  const _State({final  List<AnoboyDetailModel> anoboyList = const [], final  List<KomikuDetailModel> komikuList = const []}): _anoboyList = anoboyList,_komikuList = komikuList;
  

 final  List<AnoboyDetailModel> _anoboyList;
@override@JsonKey() List<AnoboyDetailModel> get anoboyList {
  if (_anoboyList is EqualUnmodifiableListView) return _anoboyList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_anoboyList);
}

 final  List<KomikuDetailModel> _komikuList;
@override@JsonKey() List<KomikuDetailModel> get komikuList {
  if (_komikuList is EqualUnmodifiableListView) return _komikuList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_komikuList);
}


/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&const DeepCollectionEquality().equals(other._anoboyList, _anoboyList)&&const DeepCollectionEquality().equals(other._komikuList, _komikuList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_anoboyList),const DeepCollectionEquality().hash(_komikuList));

@override
String toString() {
  return 'FavouritesState.state(anoboyList: $anoboyList, komikuList: $komikuList)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $FavouritesStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 List<AnoboyDetailModel> anoboyList, List<KomikuDetailModel> komikuList
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of FavouritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anoboyList = null,Object? komikuList = null,}) {
  return _then(_State(
anoboyList: null == anoboyList ? _self._anoboyList : anoboyList // ignore: cast_nullable_to_non_nullable
as List<AnoboyDetailModel>,komikuList: null == komikuList ? _self._komikuList : komikuList // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailModel>,
  ));
}


}

// dart format on
