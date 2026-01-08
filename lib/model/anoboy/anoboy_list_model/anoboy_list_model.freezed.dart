// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnoboyListModel {

/// Max Page of Anoboy Home Screen or Search
@JsonKey(name: "max_page") int get maxPage;/// Next Page Link
@JsonKey(name: "next_page") String? get nextPage;/// Previous Page Link
@JsonKey(name: "prev_page") String? get prevPage;/// Anime List Data
 List<AnoboyListItemModel> get data;
/// Create a copy of AnoboyListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyListModelCopyWith<AnoboyListModel> get copyWith => _$AnoboyListModelCopyWithImpl<AnoboyListModel>(this as AnoboyListModel, _$identity);

  /// Serializes this AnoboyListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyListModel&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.prevPage, prevPage) || other.prevPage == prevPage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPage,nextPage,prevPage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AnoboyListModel(maxPage: $maxPage, nextPage: $nextPage, prevPage: $prevPage, data: $data)';
}


}

/// @nodoc
abstract mixin class $AnoboyListModelCopyWith<$Res>  {
  factory $AnoboyListModelCopyWith(AnoboyListModel value, $Res Function(AnoboyListModel) _then) = _$AnoboyListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "max_page") int maxPage,@JsonKey(name: "next_page") String? nextPage,@JsonKey(name: "prev_page") String? prevPage, List<AnoboyListItemModel> data
});




}
/// @nodoc
class _$AnoboyListModelCopyWithImpl<$Res>
    implements $AnoboyListModelCopyWith<$Res> {
  _$AnoboyListModelCopyWithImpl(this._self, this._then);

  final AnoboyListModel _self;
  final $Res Function(AnoboyListModel) _then;

/// Create a copy of AnoboyListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxPage = null,Object? nextPage = freezed,Object? prevPage = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,prevPage: freezed == prevPage ? _self.prevPage : prevPage // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AnoboyListItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyListModel].
extension AnoboyListModelPatterns on AnoboyListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnoboyListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnoboyListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnoboyListModel value)  $default,){
final _that = this;
switch (_that) {
case _AnoboyListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnoboyListModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnoboyListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "max_page")  int maxPage, @JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<AnoboyListItemModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnoboyListModel() when $default != null:
return $default(_that.maxPage,_that.nextPage,_that.prevPage,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "max_page")  int maxPage, @JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<AnoboyListItemModel> data)  $default,) {final _that = this;
switch (_that) {
case _AnoboyListModel():
return $default(_that.maxPage,_that.nextPage,_that.prevPage,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "max_page")  int maxPage, @JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<AnoboyListItemModel> data)?  $default,) {final _that = this;
switch (_that) {
case _AnoboyListModel() when $default != null:
return $default(_that.maxPage,_that.nextPage,_that.prevPage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnoboyListModel implements AnoboyListModel {
  const _AnoboyListModel({@JsonKey(name: "max_page") this.maxPage = 0, @JsonKey(name: "next_page") this.nextPage, @JsonKey(name: "prev_page") this.prevPage, final  List<AnoboyListItemModel> data = const []}): _data = data;
  factory _AnoboyListModel.fromJson(Map<String, dynamic> json) => _$AnoboyListModelFromJson(json);

/// Max Page of Anoboy Home Screen or Search
@override@JsonKey(name: "max_page") final  int maxPage;
/// Next Page Link
@override@JsonKey(name: "next_page") final  String? nextPage;
/// Previous Page Link
@override@JsonKey(name: "prev_page") final  String? prevPage;
/// Anime List Data
 final  List<AnoboyListItemModel> _data;
/// Anime List Data
@override@JsonKey() List<AnoboyListItemModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AnoboyListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnoboyListModelCopyWith<_AnoboyListModel> get copyWith => __$AnoboyListModelCopyWithImpl<_AnoboyListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnoboyListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnoboyListModel&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.prevPage, prevPage) || other.prevPage == prevPage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPage,nextPage,prevPage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AnoboyListModel(maxPage: $maxPage, nextPage: $nextPage, prevPage: $prevPage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AnoboyListModelCopyWith<$Res> implements $AnoboyListModelCopyWith<$Res> {
  factory _$AnoboyListModelCopyWith(_AnoboyListModel value, $Res Function(_AnoboyListModel) _then) = __$AnoboyListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "max_page") int maxPage,@JsonKey(name: "next_page") String? nextPage,@JsonKey(name: "prev_page") String? prevPage, List<AnoboyListItemModel> data
});




}
/// @nodoc
class __$AnoboyListModelCopyWithImpl<$Res>
    implements _$AnoboyListModelCopyWith<$Res> {
  __$AnoboyListModelCopyWithImpl(this._self, this._then);

  final _AnoboyListModel _self;
  final $Res Function(_AnoboyListModel) _then;

/// Create a copy of AnoboyListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxPage = null,Object? nextPage = freezed,Object? prevPage = freezed,Object? data = null,}) {
  return _then(_AnoboyListModel(
maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,prevPage: freezed == prevPage ? _self.prevPage : prevPage // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AnoboyListItemModel>,
  ));
}


}


/// @nodoc
mixin _$AnoboyListItemModel {

/// Anime Title
 String get title;/// Anime parameter used for get anime detail from server
 String get param;/// Anime thumbnail
 String get thumbnail;/// Upload time from anoboy
@JsonKey(name: 'upload_time') String get uploadTime;/// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
@JsonKey(name: 'detail_url') String get detailUrl;
/// Create a copy of AnoboyListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnoboyListItemModelCopyWith<AnoboyListItemModel> get copyWith => _$AnoboyListItemModelCopyWithImpl<AnoboyListItemModel>(this as AnoboyListItemModel, _$identity);

  /// Serializes this AnoboyListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnoboyListItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.param, param) || other.param == param)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.uploadTime, uploadTime) || other.uploadTime == uploadTime)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,param,thumbnail,uploadTime,detailUrl);

@override
String toString() {
  return 'AnoboyListItemModel(title: $title, param: $param, thumbnail: $thumbnail, uploadTime: $uploadTime, detailUrl: $detailUrl)';
}


}

/// @nodoc
abstract mixin class $AnoboyListItemModelCopyWith<$Res>  {
  factory $AnoboyListItemModelCopyWith(AnoboyListItemModel value, $Res Function(AnoboyListItemModel) _then) = _$AnoboyListItemModelCopyWithImpl;
@useResult
$Res call({
 String title, String param, String thumbnail,@JsonKey(name: 'upload_time') String uploadTime,@JsonKey(name: 'detail_url') String detailUrl
});




}
/// @nodoc
class _$AnoboyListItemModelCopyWithImpl<$Res>
    implements $AnoboyListItemModelCopyWith<$Res> {
  _$AnoboyListItemModelCopyWithImpl(this._self, this._then);

  final AnoboyListItemModel _self;
  final $Res Function(AnoboyListItemModel) _then;

/// Create a copy of AnoboyListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? param = null,Object? thumbnail = null,Object? uploadTime = null,Object? detailUrl = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,uploadTime: null == uploadTime ? _self.uploadTime : uploadTime // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnoboyListItemModel].
extension AnoboyListItemModelPatterns on AnoboyListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnoboyListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnoboyListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnoboyListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AnoboyListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnoboyListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnoboyListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String param,  String thumbnail, @JsonKey(name: 'upload_time')  String uploadTime, @JsonKey(name: 'detail_url')  String detailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnoboyListItemModel() when $default != null:
return $default(_that.title,_that.param,_that.thumbnail,_that.uploadTime,_that.detailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String param,  String thumbnail, @JsonKey(name: 'upload_time')  String uploadTime, @JsonKey(name: 'detail_url')  String detailUrl)  $default,) {final _that = this;
switch (_that) {
case _AnoboyListItemModel():
return $default(_that.title,_that.param,_that.thumbnail,_that.uploadTime,_that.detailUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String param,  String thumbnail, @JsonKey(name: 'upload_time')  String uploadTime, @JsonKey(name: 'detail_url')  String detailUrl)?  $default,) {final _that = this;
switch (_that) {
case _AnoboyListItemModel() when $default != null:
return $default(_that.title,_that.param,_that.thumbnail,_that.uploadTime,_that.detailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnoboyListItemModel implements AnoboyListItemModel {
  const _AnoboyListItemModel({this.title = "", this.param = "", this.thumbnail = "", @JsonKey(name: 'upload_time') this.uploadTime = "", @JsonKey(name: 'detail_url') this.detailUrl = ""});
  factory _AnoboyListItemModel.fromJson(Map<String, dynamic> json) => _$AnoboyListItemModelFromJson(json);

/// Anime Title
@override@JsonKey() final  String title;
/// Anime parameter used for get anime detail from server
@override@JsonKey() final  String param;
/// Anime thumbnail
@override@JsonKey() final  String thumbnail;
/// Upload time from anoboy
@override@JsonKey(name: 'upload_time') final  String uploadTime;
/// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
@override@JsonKey(name: 'detail_url') final  String detailUrl;

/// Create a copy of AnoboyListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnoboyListItemModelCopyWith<_AnoboyListItemModel> get copyWith => __$AnoboyListItemModelCopyWithImpl<_AnoboyListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnoboyListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnoboyListItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.param, param) || other.param == param)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.uploadTime, uploadTime) || other.uploadTime == uploadTime)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,param,thumbnail,uploadTime,detailUrl);

@override
String toString() {
  return 'AnoboyListItemModel(title: $title, param: $param, thumbnail: $thumbnail, uploadTime: $uploadTime, detailUrl: $detailUrl)';
}


}

/// @nodoc
abstract mixin class _$AnoboyListItemModelCopyWith<$Res> implements $AnoboyListItemModelCopyWith<$Res> {
  factory _$AnoboyListItemModelCopyWith(_AnoboyListItemModel value, $Res Function(_AnoboyListItemModel) _then) = __$AnoboyListItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String param, String thumbnail,@JsonKey(name: 'upload_time') String uploadTime,@JsonKey(name: 'detail_url') String detailUrl
});




}
/// @nodoc
class __$AnoboyListItemModelCopyWithImpl<$Res>
    implements _$AnoboyListItemModelCopyWith<$Res> {
  __$AnoboyListItemModelCopyWithImpl(this._self, this._then);

  final _AnoboyListItemModel _self;
  final $Res Function(_AnoboyListItemModel) _then;

/// Create a copy of AnoboyListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? param = null,Object? thumbnail = null,Object? uploadTime = null,Object? detailUrl = null,}) {
  return _then(_AnoboyListItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,uploadTime: null == uploadTime ? _self.uploadTime : uploadTime // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
