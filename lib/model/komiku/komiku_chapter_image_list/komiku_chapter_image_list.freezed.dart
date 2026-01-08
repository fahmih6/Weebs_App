// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_chapter_image_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KomikuChapterImageListModel {

 List<String> get data;
/// Create a copy of KomikuChapterImageListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuChapterImageListModelCopyWith<KomikuChapterImageListModel> get copyWith => _$KomikuChapterImageListModelCopyWithImpl<KomikuChapterImageListModel>(this as KomikuChapterImageListModel, _$identity);

  /// Serializes this KomikuChapterImageListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuChapterImageListModel&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'KomikuChapterImageListModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $KomikuChapterImageListModelCopyWith<$Res>  {
  factory $KomikuChapterImageListModelCopyWith(KomikuChapterImageListModel value, $Res Function(KomikuChapterImageListModel) _then) = _$KomikuChapterImageListModelCopyWithImpl;
@useResult
$Res call({
 List<String> data
});




}
/// @nodoc
class _$KomikuChapterImageListModelCopyWithImpl<$Res>
    implements $KomikuChapterImageListModelCopyWith<$Res> {
  _$KomikuChapterImageListModelCopyWithImpl(this._self, this._then);

  final KomikuChapterImageListModel _self;
  final $Res Function(KomikuChapterImageListModel) _then;

/// Create a copy of KomikuChapterImageListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuChapterImageListModel].
extension KomikuChapterImageListModelPatterns on KomikuChapterImageListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuChapterImageListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuChapterImageListModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuChapterImageListModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuChapterImageListModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuChapterImageListModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuChapterImageListModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuChapterImageListModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> data)  $default,) {final _that = this;
switch (_that) {
case _KomikuChapterImageListModel():
return $default(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> data)?  $default,) {final _that = this;
switch (_that) {
case _KomikuChapterImageListModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomikuChapterImageListModel implements KomikuChapterImageListModel {
  const _KomikuChapterImageListModel({final  List<String> data = const []}): _data = data;
  factory _KomikuChapterImageListModel.fromJson(Map<String, dynamic> json) => _$KomikuChapterImageListModelFromJson(json);

 final  List<String> _data;
@override@JsonKey() List<String> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of KomikuChapterImageListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuChapterImageListModelCopyWith<_KomikuChapterImageListModel> get copyWith => __$KomikuChapterImageListModelCopyWithImpl<_KomikuChapterImageListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuChapterImageListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuChapterImageListModel&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'KomikuChapterImageListModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$KomikuChapterImageListModelCopyWith<$Res> implements $KomikuChapterImageListModelCopyWith<$Res> {
  factory _$KomikuChapterImageListModelCopyWith(_KomikuChapterImageListModel value, $Res Function(_KomikuChapterImageListModel) _then) = __$KomikuChapterImageListModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> data
});




}
/// @nodoc
class __$KomikuChapterImageListModelCopyWithImpl<$Res>
    implements _$KomikuChapterImageListModelCopyWith<$Res> {
  __$KomikuChapterImageListModelCopyWithImpl(this._self, this._then);

  final _KomikuChapterImageListModel _self;
  final $Res Function(_KomikuChapterImageListModel) _then;

/// Create a copy of KomikuChapterImageListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_KomikuChapterImageListModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
