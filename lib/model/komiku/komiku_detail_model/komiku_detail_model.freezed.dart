// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KomikuDetailModel {

 String get title;@JsonKey(readValue: _readParam) String get param; String get thumbnail; List<String> get genre; String get synopsis; List<KomikuDetailChapterModel> get chapters; String get type;@JsonKey(readValue: _readString) String get rating;
/// Create a copy of KomikuDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuDetailModelCopyWith<KomikuDetailModel> get copyWith => _$KomikuDetailModelCopyWithImpl<KomikuDetailModel>(this as KomikuDetailModel, _$identity);

  /// Serializes this KomikuDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuDetailModel&&(identical(other.title, title) || other.title == title)&&(identical(other.param, param) || other.param == param)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.genre, genre)&&(identical(other.synopsis, synopsis) || other.synopsis == synopsis)&&const DeepCollectionEquality().equals(other.chapters, chapters)&&(identical(other.type, type) || other.type == type)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,param,thumbnail,const DeepCollectionEquality().hash(genre),synopsis,const DeepCollectionEquality().hash(chapters),type,rating);

@override
String toString() {
  return 'KomikuDetailModel(title: $title, param: $param, thumbnail: $thumbnail, genre: $genre, synopsis: $synopsis, chapters: $chapters, type: $type, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $KomikuDetailModelCopyWith<$Res>  {
  factory $KomikuDetailModelCopyWith(KomikuDetailModel value, $Res Function(KomikuDetailModel) _then) = _$KomikuDetailModelCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(readValue: _readParam) String param, String thumbnail, List<String> genre, String synopsis, List<KomikuDetailChapterModel> chapters, String type,@JsonKey(readValue: _readString) String rating
});




}
/// @nodoc
class _$KomikuDetailModelCopyWithImpl<$Res>
    implements $KomikuDetailModelCopyWith<$Res> {
  _$KomikuDetailModelCopyWithImpl(this._self, this._then);

  final KomikuDetailModel _self;
  final $Res Function(KomikuDetailModel) _then;

/// Create a copy of KomikuDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? param = null,Object? thumbnail = null,Object? genre = null,Object? synopsis = null,Object? chapters = null,Object? type = null,Object? rating = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,genre: null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>,synopsis: null == synopsis ? _self.synopsis : synopsis // ignore: cast_nullable_to_non_nullable
as String,chapters: null == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailChapterModel>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuDetailModel].
extension KomikuDetailModelPatterns on KomikuDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(readValue: _readParam)  String param,  String thumbnail,  List<String> genre,  String synopsis,  List<KomikuDetailChapterModel> chapters,  String type, @JsonKey(readValue: _readString)  String rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuDetailModel() when $default != null:
return $default(_that.title,_that.param,_that.thumbnail,_that.genre,_that.synopsis,_that.chapters,_that.type,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(readValue: _readParam)  String param,  String thumbnail,  List<String> genre,  String synopsis,  List<KomikuDetailChapterModel> chapters,  String type, @JsonKey(readValue: _readString)  String rating)  $default,) {final _that = this;
switch (_that) {
case _KomikuDetailModel():
return $default(_that.title,_that.param,_that.thumbnail,_that.genre,_that.synopsis,_that.chapters,_that.type,_that.rating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(readValue: _readParam)  String param,  String thumbnail,  List<String> genre,  String synopsis,  List<KomikuDetailChapterModel> chapters,  String type, @JsonKey(readValue: _readString)  String rating)?  $default,) {final _that = this;
switch (_that) {
case _KomikuDetailModel() when $default != null:
return $default(_that.title,_that.param,_that.thumbnail,_that.genre,_that.synopsis,_that.chapters,_that.type,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomikuDetailModel implements KomikuDetailModel {
  const _KomikuDetailModel({this.title = "", @JsonKey(readValue: _readParam) this.param = "", this.thumbnail = "", final  List<String> genre = const [], this.synopsis = "", final  List<KomikuDetailChapterModel> chapters = const [], this.type = "", @JsonKey(readValue: _readString) this.rating = ""}): _genre = genre,_chapters = chapters;
  factory _KomikuDetailModel.fromJson(Map<String, dynamic> json) => _$KomikuDetailModelFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey(readValue: _readParam) final  String param;
@override@JsonKey() final  String thumbnail;
 final  List<String> _genre;
@override@JsonKey() List<String> get genre {
  if (_genre is EqualUnmodifiableListView) return _genre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genre);
}

@override@JsonKey() final  String synopsis;
 final  List<KomikuDetailChapterModel> _chapters;
@override@JsonKey() List<KomikuDetailChapterModel> get chapters {
  if (_chapters is EqualUnmodifiableListView) return _chapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chapters);
}

@override@JsonKey() final  String type;
@override@JsonKey(readValue: _readString) final  String rating;

/// Create a copy of KomikuDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuDetailModelCopyWith<_KomikuDetailModel> get copyWith => __$KomikuDetailModelCopyWithImpl<_KomikuDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuDetailModel&&(identical(other.title, title) || other.title == title)&&(identical(other.param, param) || other.param == param)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._genre, _genre)&&(identical(other.synopsis, synopsis) || other.synopsis == synopsis)&&const DeepCollectionEquality().equals(other._chapters, _chapters)&&(identical(other.type, type) || other.type == type)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,param,thumbnail,const DeepCollectionEquality().hash(_genre),synopsis,const DeepCollectionEquality().hash(_chapters),type,rating);

@override
String toString() {
  return 'KomikuDetailModel(title: $title, param: $param, thumbnail: $thumbnail, genre: $genre, synopsis: $synopsis, chapters: $chapters, type: $type, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$KomikuDetailModelCopyWith<$Res> implements $KomikuDetailModelCopyWith<$Res> {
  factory _$KomikuDetailModelCopyWith(_KomikuDetailModel value, $Res Function(_KomikuDetailModel) _then) = __$KomikuDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(readValue: _readParam) String param, String thumbnail, List<String> genre, String synopsis, List<KomikuDetailChapterModel> chapters, String type,@JsonKey(readValue: _readString) String rating
});




}
/// @nodoc
class __$KomikuDetailModelCopyWithImpl<$Res>
    implements _$KomikuDetailModelCopyWith<$Res> {
  __$KomikuDetailModelCopyWithImpl(this._self, this._then);

  final _KomikuDetailModel _self;
  final $Res Function(_KomikuDetailModel) _then;

/// Create a copy of KomikuDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? param = null,Object? thumbnail = null,Object? genre = null,Object? synopsis = null,Object? chapters = null,Object? type = null,Object? rating = null,}) {
  return _then(_KomikuDetailModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,genre: null == genre ? _self._genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>,synopsis: null == synopsis ? _self.synopsis : synopsis // ignore: cast_nullable_to_non_nullable
as String,chapters: null == chapters ? _self._chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<KomikuDetailChapterModel>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KomikuDetailChapterModel {

/// Manga chapter number
@JsonKey(readValue: _readString) String get chapter;/// Manga chapter param
@JsonKey(readValue: _readParam) String get param;/// Manga chapter release date
 String get release;/// Manga chapter detail URL
@JsonKey(name: "detail_url") String get detailUrl;/// Is Read
 bool get isRead;
/// Create a copy of KomikuDetailChapterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuDetailChapterModelCopyWith<KomikuDetailChapterModel> get copyWith => _$KomikuDetailChapterModelCopyWithImpl<KomikuDetailChapterModel>(this as KomikuDetailChapterModel, _$identity);

  /// Serializes this KomikuDetailChapterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuDetailChapterModel&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.param, param) || other.param == param)&&(identical(other.release, release) || other.release == release)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapter,param,release,detailUrl,isRead);

@override
String toString() {
  return 'KomikuDetailChapterModel(chapter: $chapter, param: $param, release: $release, detailUrl: $detailUrl, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $KomikuDetailChapterModelCopyWith<$Res>  {
  factory $KomikuDetailChapterModelCopyWith(KomikuDetailChapterModel value, $Res Function(KomikuDetailChapterModel) _then) = _$KomikuDetailChapterModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readString) String chapter,@JsonKey(readValue: _readParam) String param, String release,@JsonKey(name: "detail_url") String detailUrl, bool isRead
});




}
/// @nodoc
class _$KomikuDetailChapterModelCopyWithImpl<$Res>
    implements $KomikuDetailChapterModelCopyWith<$Res> {
  _$KomikuDetailChapterModelCopyWithImpl(this._self, this._then);

  final KomikuDetailChapterModel _self;
  final $Res Function(KomikuDetailChapterModel) _then;

/// Create a copy of KomikuDetailChapterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chapter = null,Object? param = null,Object? release = null,Object? detailUrl = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,release: null == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuDetailChapterModel].
extension KomikuDetailChapterModelPatterns on KomikuDetailChapterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuDetailChapterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuDetailChapterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuDetailChapterModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuDetailChapterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuDetailChapterModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuDetailChapterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readString)  String chapter, @JsonKey(readValue: _readParam)  String param,  String release, @JsonKey(name: "detail_url")  String detailUrl,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuDetailChapterModel() when $default != null:
return $default(_that.chapter,_that.param,_that.release,_that.detailUrl,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readString)  String chapter, @JsonKey(readValue: _readParam)  String param,  String release, @JsonKey(name: "detail_url")  String detailUrl,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _KomikuDetailChapterModel():
return $default(_that.chapter,_that.param,_that.release,_that.detailUrl,_that.isRead);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readString)  String chapter, @JsonKey(readValue: _readParam)  String param,  String release, @JsonKey(name: "detail_url")  String detailUrl,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _KomikuDetailChapterModel() when $default != null:
return $default(_that.chapter,_that.param,_that.release,_that.detailUrl,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomikuDetailChapterModel implements KomikuDetailChapterModel {
  const _KomikuDetailChapterModel({@JsonKey(readValue: _readString) this.chapter = "", @JsonKey(readValue: _readParam) this.param = "", this.release = "", @JsonKey(name: "detail_url") this.detailUrl = "", this.isRead = false});
  factory _KomikuDetailChapterModel.fromJson(Map<String, dynamic> json) => _$KomikuDetailChapterModelFromJson(json);

/// Manga chapter number
@override@JsonKey(readValue: _readString) final  String chapter;
/// Manga chapter param
@override@JsonKey(readValue: _readParam) final  String param;
/// Manga chapter release date
@override@JsonKey() final  String release;
/// Manga chapter detail URL
@override@JsonKey(name: "detail_url") final  String detailUrl;
/// Is Read
@override@JsonKey() final  bool isRead;

/// Create a copy of KomikuDetailChapterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuDetailChapterModelCopyWith<_KomikuDetailChapterModel> get copyWith => __$KomikuDetailChapterModelCopyWithImpl<_KomikuDetailChapterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuDetailChapterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuDetailChapterModel&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.param, param) || other.param == param)&&(identical(other.release, release) || other.release == release)&&(identical(other.detailUrl, detailUrl) || other.detailUrl == detailUrl)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapter,param,release,detailUrl,isRead);

@override
String toString() {
  return 'KomikuDetailChapterModel(chapter: $chapter, param: $param, release: $release, detailUrl: $detailUrl, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$KomikuDetailChapterModelCopyWith<$Res> implements $KomikuDetailChapterModelCopyWith<$Res> {
  factory _$KomikuDetailChapterModelCopyWith(_KomikuDetailChapterModel value, $Res Function(_KomikuDetailChapterModel) _then) = __$KomikuDetailChapterModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readString) String chapter,@JsonKey(readValue: _readParam) String param, String release,@JsonKey(name: "detail_url") String detailUrl, bool isRead
});




}
/// @nodoc
class __$KomikuDetailChapterModelCopyWithImpl<$Res>
    implements _$KomikuDetailChapterModelCopyWith<$Res> {
  __$KomikuDetailChapterModelCopyWithImpl(this._self, this._then);

  final _KomikuDetailChapterModel _self;
  final $Res Function(_KomikuDetailChapterModel) _then;

/// Create a copy of KomikuDetailChapterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chapter = null,Object? param = null,Object? release = null,Object? detailUrl = null,Object? isRead = null,}) {
  return _then(_KomikuDetailChapterModel(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String,release: null == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as String,detailUrl: null == detailUrl ? _self.detailUrl : detailUrl // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$KomikuChapterFetchModel {

/// Chapter Param
 String get chapterParam;/// Chapter URls
 List<String> get chapterUrls;
/// Create a copy of KomikuChapterFetchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomikuChapterFetchModelCopyWith<KomikuChapterFetchModel> get copyWith => _$KomikuChapterFetchModelCopyWithImpl<KomikuChapterFetchModel>(this as KomikuChapterFetchModel, _$identity);

  /// Serializes this KomikuChapterFetchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomikuChapterFetchModel&&(identical(other.chapterParam, chapterParam) || other.chapterParam == chapterParam)&&const DeepCollectionEquality().equals(other.chapterUrls, chapterUrls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapterParam,const DeepCollectionEquality().hash(chapterUrls));

@override
String toString() {
  return 'KomikuChapterFetchModel(chapterParam: $chapterParam, chapterUrls: $chapterUrls)';
}


}

/// @nodoc
abstract mixin class $KomikuChapterFetchModelCopyWith<$Res>  {
  factory $KomikuChapterFetchModelCopyWith(KomikuChapterFetchModel value, $Res Function(KomikuChapterFetchModel) _then) = _$KomikuChapterFetchModelCopyWithImpl;
@useResult
$Res call({
 String chapterParam, List<String> chapterUrls
});




}
/// @nodoc
class _$KomikuChapterFetchModelCopyWithImpl<$Res>
    implements $KomikuChapterFetchModelCopyWith<$Res> {
  _$KomikuChapterFetchModelCopyWithImpl(this._self, this._then);

  final KomikuChapterFetchModel _self;
  final $Res Function(KomikuChapterFetchModel) _then;

/// Create a copy of KomikuChapterFetchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chapterParam = null,Object? chapterUrls = null,}) {
  return _then(_self.copyWith(
chapterParam: null == chapterParam ? _self.chapterParam : chapterParam // ignore: cast_nullable_to_non_nullable
as String,chapterUrls: null == chapterUrls ? _self.chapterUrls : chapterUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [KomikuChapterFetchModel].
extension KomikuChapterFetchModelPatterns on KomikuChapterFetchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomikuChapterFetchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomikuChapterFetchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomikuChapterFetchModel value)  $default,){
final _that = this;
switch (_that) {
case _KomikuChapterFetchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomikuChapterFetchModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomikuChapterFetchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chapterParam,  List<String> chapterUrls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomikuChapterFetchModel() when $default != null:
return $default(_that.chapterParam,_that.chapterUrls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chapterParam,  List<String> chapterUrls)  $default,) {final _that = this;
switch (_that) {
case _KomikuChapterFetchModel():
return $default(_that.chapterParam,_that.chapterUrls);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chapterParam,  List<String> chapterUrls)?  $default,) {final _that = this;
switch (_that) {
case _KomikuChapterFetchModel() when $default != null:
return $default(_that.chapterParam,_that.chapterUrls);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _KomikuChapterFetchModel implements KomikuChapterFetchModel {
  const _KomikuChapterFetchModel({this.chapterParam = "", final  List<String> chapterUrls = const []}): _chapterUrls = chapterUrls;
  factory _KomikuChapterFetchModel.fromJson(Map<String, dynamic> json) => _$KomikuChapterFetchModelFromJson(json);

/// Chapter Param
@override@JsonKey() final  String chapterParam;
/// Chapter URls
 final  List<String> _chapterUrls;
/// Chapter URls
@override@JsonKey() List<String> get chapterUrls {
  if (_chapterUrls is EqualUnmodifiableListView) return _chapterUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chapterUrls);
}


/// Create a copy of KomikuChapterFetchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomikuChapterFetchModelCopyWith<_KomikuChapterFetchModel> get copyWith => __$KomikuChapterFetchModelCopyWithImpl<_KomikuChapterFetchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomikuChapterFetchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomikuChapterFetchModel&&(identical(other.chapterParam, chapterParam) || other.chapterParam == chapterParam)&&const DeepCollectionEquality().equals(other._chapterUrls, _chapterUrls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapterParam,const DeepCollectionEquality().hash(_chapterUrls));

@override
String toString() {
  return 'KomikuChapterFetchModel(chapterParam: $chapterParam, chapterUrls: $chapterUrls)';
}


}

/// @nodoc
abstract mixin class _$KomikuChapterFetchModelCopyWith<$Res> implements $KomikuChapterFetchModelCopyWith<$Res> {
  factory _$KomikuChapterFetchModelCopyWith(_KomikuChapterFetchModel value, $Res Function(_KomikuChapterFetchModel) _then) = __$KomikuChapterFetchModelCopyWithImpl;
@override @useResult
$Res call({
 String chapterParam, List<String> chapterUrls
});




}
/// @nodoc
class __$KomikuChapterFetchModelCopyWithImpl<$Res>
    implements _$KomikuChapterFetchModelCopyWith<$Res> {
  __$KomikuChapterFetchModelCopyWithImpl(this._self, this._then);

  final _KomikuChapterFetchModel _self;
  final $Res Function(_KomikuChapterFetchModel) _then;

/// Create a copy of KomikuChapterFetchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chapterParam = null,Object? chapterUrls = null,}) {
  return _then(_KomikuChapterFetchModel(
chapterParam: null == chapterParam ? _self.chapterParam : chapterParam // ignore: cast_nullable_to_non_nullable
as String,chapterUrls: null == chapterUrls ? _self._chapterUrls : chapterUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
