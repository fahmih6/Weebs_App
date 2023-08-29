// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KomikuDetailModel _$KomikuDetailModelFromJson(Map<String, dynamic> json) {
  return _KomikuDetailModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuDetailModel {
  String get title => throw _privateConstructorUsedError;
  String get param => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get genre => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;
  List<KomikuDetailChapterModel> get chapters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuDetailModelCopyWith<KomikuDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuDetailModelCopyWith<$Res> {
  factory $KomikuDetailModelCopyWith(
          KomikuDetailModel value, $Res Function(KomikuDetailModel) then) =
      _$KomikuDetailModelCopyWithImpl<$Res, KomikuDetailModel>;
  @useResult
  $Res call(
      {String title,
      String param,
      String thumbnail,
      List<String> genre,
      String synopsis,
      List<KomikuDetailChapterModel> chapters});
}

/// @nodoc
class _$KomikuDetailModelCopyWithImpl<$Res, $Val extends KomikuDetailModel>
    implements $KomikuDetailModelCopyWith<$Res> {
  _$KomikuDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? param = null,
    Object? thumbnail = null,
    Object? genre = null,
    Object? synopsis = null,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailChapterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KomikuDetailModelCopyWith<$Res>
    implements $KomikuDetailModelCopyWith<$Res> {
  factory _$$_KomikuDetailModelCopyWith(_$_KomikuDetailModel value,
          $Res Function(_$_KomikuDetailModel) then) =
      __$$_KomikuDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String param,
      String thumbnail,
      List<String> genre,
      String synopsis,
      List<KomikuDetailChapterModel> chapters});
}

/// @nodoc
class __$$_KomikuDetailModelCopyWithImpl<$Res>
    extends _$KomikuDetailModelCopyWithImpl<$Res, _$_KomikuDetailModel>
    implements _$$_KomikuDetailModelCopyWith<$Res> {
  __$$_KomikuDetailModelCopyWithImpl(
      _$_KomikuDetailModel _value, $Res Function(_$_KomikuDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? param = null,
    Object? thumbnail = null,
    Object? genre = null,
    Object? synopsis = null,
    Object? chapters = null,
  }) {
    return _then(_$_KomikuDetailModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailChapterModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KomikuDetailModel implements _KomikuDetailModel {
  const _$_KomikuDetailModel(
      {this.title = "",
      this.param = "",
      this.thumbnail = "",
      final List<String> genre = const [],
      this.synopsis = "",
      final List<KomikuDetailChapterModel> chapters = const []})
      : _genre = genre,
        _chapters = chapters;

  factory _$_KomikuDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_KomikuDetailModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String param;
  @override
  @JsonKey()
  final String thumbnail;
  final List<String> _genre;
  @override
  @JsonKey()
  List<String> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  @JsonKey()
  final String synopsis;
  final List<KomikuDetailChapterModel> _chapters;
  @override
  @JsonKey()
  List<KomikuDetailChapterModel> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'KomikuDetailModel(title: $title, param: $param, thumbnail: $thumbnail, genre: $genre, synopsis: $synopsis, chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KomikuDetailModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      param,
      thumbnail,
      const DeepCollectionEquality().hash(_genre),
      synopsis,
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KomikuDetailModelCopyWith<_$_KomikuDetailModel> get copyWith =>
      __$$_KomikuDetailModelCopyWithImpl<_$_KomikuDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KomikuDetailModelToJson(
      this,
    );
  }
}

abstract class _KomikuDetailModel implements KomikuDetailModel {
  const factory _KomikuDetailModel(
      {final String title,
      final String param,
      final String thumbnail,
      final List<String> genre,
      final String synopsis,
      final List<KomikuDetailChapterModel> chapters}) = _$_KomikuDetailModel;

  factory _KomikuDetailModel.fromJson(Map<String, dynamic> json) =
      _$_KomikuDetailModel.fromJson;

  @override
  String get title;
  @override
  String get param;
  @override
  String get thumbnail;
  @override
  List<String> get genre;
  @override
  String get synopsis;
  @override
  List<KomikuDetailChapterModel> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$_KomikuDetailModelCopyWith<_$_KomikuDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

KomikuDetailChapterModel _$KomikuDetailChapterModelFromJson(
    Map<String, dynamic> json) {
  return _KomikuDetailChapterModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuDetailChapterModel {
  /// Manga chapter number
  String get chapter => throw _privateConstructorUsedError;

  /// Manga chapter param
  String get param => throw _privateConstructorUsedError;

  /// Manga chapter release date
  String get release => throw _privateConstructorUsedError;

  /// Manga chapter detail URL
  @JsonKey(name: "detail_url")
  String get detailUrl => throw _privateConstructorUsedError;

  /// Is Read
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuDetailChapterModelCopyWith<KomikuDetailChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuDetailChapterModelCopyWith<$Res> {
  factory $KomikuDetailChapterModelCopyWith(KomikuDetailChapterModel value,
          $Res Function(KomikuDetailChapterModel) then) =
      _$KomikuDetailChapterModelCopyWithImpl<$Res, KomikuDetailChapterModel>;
  @useResult
  $Res call(
      {String chapter,
      String param,
      String release,
      @JsonKey(name: "detail_url") String detailUrl,
      bool isRead});
}

/// @nodoc
class _$KomikuDetailChapterModelCopyWithImpl<$Res,
        $Val extends KomikuDetailChapterModel>
    implements $KomikuDetailChapterModelCopyWith<$Res> {
  _$KomikuDetailChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? param = null,
    Object? release = null,
    Object? detailUrl = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KomikuDetailChapterModelCopyWith<$Res>
    implements $KomikuDetailChapterModelCopyWith<$Res> {
  factory _$$_KomikuDetailChapterModelCopyWith(
          _$_KomikuDetailChapterModel value,
          $Res Function(_$_KomikuDetailChapterModel) then) =
      __$$_KomikuDetailChapterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chapter,
      String param,
      String release,
      @JsonKey(name: "detail_url") String detailUrl,
      bool isRead});
}

/// @nodoc
class __$$_KomikuDetailChapterModelCopyWithImpl<$Res>
    extends _$KomikuDetailChapterModelCopyWithImpl<$Res,
        _$_KomikuDetailChapterModel>
    implements _$$_KomikuDetailChapterModelCopyWith<$Res> {
  __$$_KomikuDetailChapterModelCopyWithImpl(_$_KomikuDetailChapterModel _value,
      $Res Function(_$_KomikuDetailChapterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? param = null,
    Object? release = null,
    Object? detailUrl = null,
    Object? isRead = null,
  }) {
    return _then(_$_KomikuDetailChapterModel(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KomikuDetailChapterModel implements _KomikuDetailChapterModel {
  const _$_KomikuDetailChapterModel(
      {this.chapter = "",
      this.param = "",
      this.release = "",
      @JsonKey(name: "detail_url") this.detailUrl = "",
      this.isRead = false});

  factory _$_KomikuDetailChapterModel.fromJson(Map<String, dynamic> json) =>
      _$$_KomikuDetailChapterModelFromJson(json);

  /// Manga chapter number
  @override
  @JsonKey()
  final String chapter;

  /// Manga chapter param
  @override
  @JsonKey()
  final String param;

  /// Manga chapter release date
  @override
  @JsonKey()
  final String release;

  /// Manga chapter detail URL
  @override
  @JsonKey(name: "detail_url")
  final String detailUrl;

  /// Is Read
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'KomikuDetailChapterModel(chapter: $chapter, param: $param, release: $release, detailUrl: $detailUrl, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KomikuDetailChapterModel &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chapter, param, release, detailUrl, isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KomikuDetailChapterModelCopyWith<_$_KomikuDetailChapterModel>
      get copyWith => __$$_KomikuDetailChapterModelCopyWithImpl<
          _$_KomikuDetailChapterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KomikuDetailChapterModelToJson(
      this,
    );
  }
}

abstract class _KomikuDetailChapterModel implements KomikuDetailChapterModel {
  const factory _KomikuDetailChapterModel(
      {final String chapter,
      final String param,
      final String release,
      @JsonKey(name: "detail_url") final String detailUrl,
      final bool isRead}) = _$_KomikuDetailChapterModel;

  factory _KomikuDetailChapterModel.fromJson(Map<String, dynamic> json) =
      _$_KomikuDetailChapterModel.fromJson;

  @override

  /// Manga chapter number
  String get chapter;
  @override

  /// Manga chapter param
  String get param;
  @override

  /// Manga chapter release date
  String get release;
  @override

  /// Manga chapter detail URL
  @JsonKey(name: "detail_url")
  String get detailUrl;
  @override

  /// Is Read
  bool get isRead;
  @override
  @JsonKey(ignore: true)
  _$$_KomikuDetailChapterModelCopyWith<_$_KomikuDetailChapterModel>
      get copyWith => throw _privateConstructorUsedError;
}

KomikuChapterFetchModel _$KomikuChapterFetchModelFromJson(
    Map<String, dynamic> json) {
  return _KomikuChapterFetchModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuChapterFetchModel {
  /// Chapter Param
  String get chapterParam => throw _privateConstructorUsedError;

  /// Chapter URls
  List<String> get chapterUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuChapterFetchModelCopyWith<KomikuChapterFetchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuChapterFetchModelCopyWith<$Res> {
  factory $KomikuChapterFetchModelCopyWith(KomikuChapterFetchModel value,
          $Res Function(KomikuChapterFetchModel) then) =
      _$KomikuChapterFetchModelCopyWithImpl<$Res, KomikuChapterFetchModel>;
  @useResult
  $Res call({String chapterParam, List<String> chapterUrls});
}

/// @nodoc
class _$KomikuChapterFetchModelCopyWithImpl<$Res,
        $Val extends KomikuChapterFetchModel>
    implements $KomikuChapterFetchModelCopyWith<$Res> {
  _$KomikuChapterFetchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterParam = null,
    Object? chapterUrls = null,
  }) {
    return _then(_value.copyWith(
      chapterParam: null == chapterParam
          ? _value.chapterParam
          : chapterParam // ignore: cast_nullable_to_non_nullable
              as String,
      chapterUrls: null == chapterUrls
          ? _value.chapterUrls
          : chapterUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KomikuChapterFetchModelCopyWith<$Res>
    implements $KomikuChapterFetchModelCopyWith<$Res> {
  factory _$$_KomikuChapterFetchModelCopyWith(_$_KomikuChapterFetchModel value,
          $Res Function(_$_KomikuChapterFetchModel) then) =
      __$$_KomikuChapterFetchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapterParam, List<String> chapterUrls});
}

/// @nodoc
class __$$_KomikuChapterFetchModelCopyWithImpl<$Res>
    extends _$KomikuChapterFetchModelCopyWithImpl<$Res,
        _$_KomikuChapterFetchModel>
    implements _$$_KomikuChapterFetchModelCopyWith<$Res> {
  __$$_KomikuChapterFetchModelCopyWithImpl(_$_KomikuChapterFetchModel _value,
      $Res Function(_$_KomikuChapterFetchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterParam = null,
    Object? chapterUrls = null,
  }) {
    return _then(_$_KomikuChapterFetchModel(
      chapterParam: null == chapterParam
          ? _value.chapterParam
          : chapterParam // ignore: cast_nullable_to_non_nullable
              as String,
      chapterUrls: null == chapterUrls
          ? _value._chapterUrls
          : chapterUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_KomikuChapterFetchModel implements _KomikuChapterFetchModel {
  const _$_KomikuChapterFetchModel(
      {this.chapterParam = "", final List<String> chapterUrls = const []})
      : _chapterUrls = chapterUrls;

  factory _$_KomikuChapterFetchModel.fromJson(Map<String, dynamic> json) =>
      _$$_KomikuChapterFetchModelFromJson(json);

  /// Chapter Param
  @override
  @JsonKey()
  final String chapterParam;

  /// Chapter URls
  final List<String> _chapterUrls;

  /// Chapter URls
  @override
  @JsonKey()
  List<String> get chapterUrls {
    if (_chapterUrls is EqualUnmodifiableListView) return _chapterUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapterUrls);
  }

  @override
  String toString() {
    return 'KomikuChapterFetchModel(chapterParam: $chapterParam, chapterUrls: $chapterUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KomikuChapterFetchModel &&
            (identical(other.chapterParam, chapterParam) ||
                other.chapterParam == chapterParam) &&
            const DeepCollectionEquality()
                .equals(other._chapterUrls, _chapterUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chapterParam,
      const DeepCollectionEquality().hash(_chapterUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KomikuChapterFetchModelCopyWith<_$_KomikuChapterFetchModel>
      get copyWith =>
          __$$_KomikuChapterFetchModelCopyWithImpl<_$_KomikuChapterFetchModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KomikuChapterFetchModelToJson(
      this,
    );
  }
}

abstract class _KomikuChapterFetchModel implements KomikuChapterFetchModel {
  const factory _KomikuChapterFetchModel(
      {final String chapterParam,
      final List<String> chapterUrls}) = _$_KomikuChapterFetchModel;

  factory _KomikuChapterFetchModel.fromJson(Map<String, dynamic> json) =
      _$_KomikuChapterFetchModel.fromJson;

  @override

  /// Chapter Param
  String get chapterParam;
  @override

  /// Chapter URls
  List<String> get chapterUrls;
  @override
  @JsonKey(ignore: true)
  _$$_KomikuChapterFetchModelCopyWith<_$_KomikuChapterFetchModel>
      get copyWith => throw _privateConstructorUsedError;
}
