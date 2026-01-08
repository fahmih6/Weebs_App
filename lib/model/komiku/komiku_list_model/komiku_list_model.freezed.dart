// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KomikuListModel {

@JsonKey(name: "next_page") String? get nextPage;@JsonKey(name: "prev_page") String? get prevPage; List<KomikuListItemModel> get data;
/// Create a copy of KomikuListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuListModelCopyWith<KomikuListModel> get copyWith => _$KomikuListModelCopyWithImpl<KomikuListModel>(this as KomikuListModel, _$identity);

  /// Serializes this KomikuListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuListModel&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.prevPage, prevPage) || other.prevPage == prevPage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextPage,prevPage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'KomikuListModel(nextPage: $nextPage, prevPage: $prevPage, data: $data)';
}


}

/// @nodoc
abstract mixin class $KomikuListModelCopyWith<$Res>  {
  factory $KomikuListModelCopyWith(KomikuListModel value, $Res Function(KomikuListModel) _then) = _$KomikuListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "next_page") String? nextPage,@JsonKey(name: "prev_page") String? prevPage, List<KomikuListItemModel> data
});




}
/// @nodoc
class _$KomikuListModelCopyWithImpl<$Res>
    implements $KomikuListModelCopyWith<$Res> {
  _$KomikuListModelCopyWithImpl(this._self, this._then);

  final KomikuListModel _self;
  final $Res Function(KomikuListModel) _then;

/// Create a copy of KomikuListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextPage = freezed,Object? prevPage = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,prevPage: freezed == prevPage ? _self.prevPage : prevPage // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<KomikuListItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuListModel].
extension KomikuListModelPatterns on KomikuListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuListModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuListModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<KomikuListItemModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuListModel() when $default != null:
return $default(_that.nextPage,_that.prevPage,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<KomikuListItemModel> data)  $default,) {final _that = this;
switch (_that) {
case _KomikuListModel():
return $default(_that.nextPage,_that.prevPage,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "next_page")  String? nextPage, @JsonKey(name: "prev_page")  String? prevPage,  List<KomikuListItemModel> data)?  $default,) {final _that = this;
switch (_that) {
case _KomikuListModel() when $default != null:
return $default(_that.nextPage,_that.prevPage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomikuListModel implements KomikuListModel {
  const _KomikuListModel({@JsonKey(name: "next_page") this.nextPage, @JsonKey(name: "prev_page") this.prevPage, this.data = const []});
  factory _KomikuListModel.fromJson(Map<String, dynamic> json) => _$KomikuListModelFromJson(json);

@override@JsonKey(name: "next_page") final  String? nextPage;
@override@JsonKey(name: "prev_page") final  String? prevPage;
@override@JsonKey() final  List<KomikuListItemModel> data;

/// Create a copy of KomikuListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuListModelCopyWith<_KomikuListModel> get copyWith => __$KomikuListModelCopyWithImpl<_KomikuListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuListModel&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.prevPage, prevPage) || other.prevPage == prevPage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextPage,prevPage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'KomikuListModel(nextPage: $nextPage, prevPage: $prevPage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$KomikuListModelCopyWith<$Res> implements $KomikuListModelCopyWith<$Res> {
  factory _$KomikuListModelCopyWith(_KomikuListModel value, $Res Function(_KomikuListModel) _then) = __$KomikuListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "next_page") String? nextPage,@JsonKey(name: "prev_page") String? prevPage, List<KomikuListItemModel> data
});




}
/// @nodoc
class __$KomikuListModelCopyWithImpl<$Res>
    implements _$KomikuListModelCopyWith<$Res> {
  __$KomikuListModelCopyWithImpl(this._self, this._then);

  final _KomikuListModel _self;
  final $Res Function(_KomikuListModel) _then;

/// Create a copy of KomikuListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextPage = freezed,Object? prevPage = freezed,Object? data = null,}) {
  return _then(_KomikuListModel(
nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,prevPage: freezed == prevPage ? _self.prevPage : prevPage // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<KomikuListItemModel>,
  ));
}


}


/// @nodoc
mixin _$KomikuListItemModel {

/// Manga Title
 String get title;/// Manga Thumbnail
 String get thumbnail;/// Manga Param
 String get param;/// Description
 String get description;/// Manga Latest Chapter
@JsonKey(name: "latest_chapter") String get latestChapter;/// Direct detail url
@JsonKey(name: "detail_url") String get detailUrl;/// Manga Type
 String get type;/// Manga Rating
 String get rating;
/// Create a copy of KomikuListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuListItemModelCopyWith<KomikuListItemModel> get copyWith => _$KomikuListItemModelCopyWithImpl<KomikuListItemModel>(this as KomikuListItemModel, _$identity);

  /// Serializes this KomikuListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuListItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.param, param) || other.param == param)&&(identical(other.description, description) || other.description == description)&&(identical(other.latestChapter, latestChapter) || other.latestChapter == latestChapter)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,thumbnail,param,description,latestChapter,detailUrl,type,rating);

@override
String toString() {
  return 'KomikuListItemModel(title: $title, thumbnail: $thumbnail, param: $param, description: $description, latestChapter: $latestChapter, detailUrl: $detailUrl, type: $type, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $KomikuListItemModelCopyWith<$Res>  {
  factory $KomikuListItemModelCopyWith(KomikuListItemModel value, $Res Function(KomikuListItemModel) _then) = _$KomikuListItemModelCopyWithImpl;
@useResult
$Res call({
 String title, String thumbnail, String param, String description,@JsonKey(name: "latest_chapter") String latestChapter,@JsonKey(name: "detail_url") String detailUrl, String type, String rating
});




}
/// @nodoc
class _$KomikuListItemModelCopyWithImpl<$Res>
    implements $KomikuListItemModelCopyWith<$Res> {
  _$KomikuListItemModelCopyWithImpl(this._self, this._then);

  final KomikuListItemModel _self;
  final $Res Function(KomikuListItemModel) _then;

/// Create a copy of KomikuListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? thumbnail = null,Object? param = null,Object? description = null,Object? latestChapter = null,Object? detailUrl = null,Object? type = null,Object? rating = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latestChapter: null == latestChapter ? _self.latestChapter : latestChapter // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuListItemModel].
extension KomikuListItemModelPatterns on KomikuListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String thumbnail,  String param,  String description, @JsonKey(name: "latest_chapter")  String latestChapter, @JsonKey(name: "detail_url")  String detailUrl,  String type,  String rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuListItemModel() when $default != null:
return $default(_that.title,_that.thumbnail,_that.param,_that.description,_that.latestChapter,_that.detailUrl,_that.type,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String thumbnail,  String param,  String description, @JsonKey(name: "latest_chapter")  String latestChapter, @JsonKey(name: "detail_url")  String detailUrl,  String type,  String rating)  $default,) {final _that = this;
switch (_that) {
case _KomikuListItemModel():
return $default(_that.title,_that.thumbnail,_that.param,_that.description,_that.latestChapter,_that.detailUrl,_that.type,_that.rating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String thumbnail,  String param,  String description, @JsonKey(name: "latest_chapter")  String latestChapter, @JsonKey(name: "detail_url")  String detailUrl,  String type,  String rating)?  $default,) {final _that = this;
switch (_that) {
case _KomikuListItemModel() when $default != null:
return $default(_that.title,_that.thumbnail,_that.param,_that.description,_that.latestChapter,_that.detailUrl,_that.type,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomikuListItemModel implements KomikuListItemModel {
  const _KomikuListItemModel({this.title = "", this.thumbnail = "", this.param = "", this.description = "", @JsonKey(name: "latest_chapter") this.latestChapter = "", @JsonKey(name: "detail_url") this.detailUrl = "", this.type = "", this.rating = ""});
  factory _KomikuListItemModel.fromJson(Map<String, dynamic> json) => _$KomikuListItemModelFromJson(json);

/// Manga Title
@override@JsonKey() final  String title;
/// Manga Thumbnail
@override@JsonKey() final  String thumbnail;
/// Manga Param
@override@JsonKey() final  String param;
/// Description
@override@JsonKey() final  String description;
/// Manga Latest Chapter
@override@JsonKey(name: "latest_chapter") final  String latestChapter;
/// Direct detail url
@override@JsonKey(name: "detail_url") final  String detailUrl;
/// Manga Type
@override@JsonKey() final  String type;
/// Manga Rating
@override@JsonKey() final  String rating;

/// Create a copy of KomikuListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuListItemModelCopyWith<_KomikuListItemModel> get copyWith => __$KomikuListItemModelCopyWithImpl<_KomikuListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuListItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.param, param) || other.param == param)&&(identical(other.description, description) || other.description == description)&&(identical(other.latestChapter, latestChapter) || other.latestChapter == latestChapter)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,thumbnail,param,description,latestChapter,detailUrl,type,rating);

@override
String toString() {
  return 'KomikuListItemModel(title: $title, thumbnail: $thumbnail, param: $param, description: $description, latestChapter: $latestChapter, detailUrl: $detailUrl, type: $type, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$KomikuListItemModelCopyWith<$Res> implements $KomikuListItemModelCopyWith<$Res> {
  factory _$KomikuListItemModelCopyWith(_KomikuListItemModel value, $Res Function(_KomikuListItemModel) _then) = __$KomikuListItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String thumbnail, String param, String description,@JsonKey(name: "latest_chapter") String latestChapter,@JsonKey(name: "detail_url") String detailUrl, String type, String rating
});




}
/// @nodoc
class __$KomikuListItemModelCopyWithImpl<$Res>
    implements _$KomikuListItemModelCopyWith<$Res> {
  __$KomikuListItemModelCopyWithImpl(this._self, this._then);

  final _KomikuListItemModel _self;
  final $Res Function(_KomikuListItemModel) _then;

/// Create a copy of KomikuListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? thumbnail = null,Object? param = null,Object? description = null,Object? latestChapter = null,Object? detailUrl = null,Object? type = null,Object? rating = null,}) {
  return _then(_KomikuListItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latestChapter: null == latestChapter ? _self.latestChapter : latestChapter // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
