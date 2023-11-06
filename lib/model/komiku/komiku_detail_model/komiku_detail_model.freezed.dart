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
abstract class _$$KomikuDetailModelImplCopyWith<$Res>
    implements $KomikuDetailModelCopyWith<$Res> {
  factory _$$KomikuDetailModelImplCopyWith(_$KomikuDetailModelImpl value,
          $Res Function(_$KomikuDetailModelImpl) then) =
      __$$KomikuDetailModelImplCopyWithImpl<$Res>;
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
class __$$KomikuDetailModelImplCopyWithImpl<$Res>
    extends _$KomikuDetailModelCopyWithImpl<$Res, _$KomikuDetailModelImpl>
    implements _$$KomikuDetailModelImplCopyWith<$Res> {
  __$$KomikuDetailModelImplCopyWithImpl(_$KomikuDetailModelImpl _value,
      $Res Function(_$KomikuDetailModelImpl) _then)
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
    return _then(_$KomikuDetailModelImpl(
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
class _$KomikuDetailModelImpl implements _KomikuDetailModel {
  const _$KomikuDetailModelImpl(
      {this.title = "",
      this.param = "",
      this.thumbnail = "",
      final List<String> genre = const [],
      this.synopsis = "",
      final List<KomikuDetailChapterModel> chapters = const []})
      : _genre = genre,
        _chapters = chapters;

  factory _$KomikuDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KomikuDetailModelImplFromJson(json);

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
            other is _$KomikuDetailModelImpl &&
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
  _$$KomikuDetailModelImplCopyWith<_$KomikuDetailModelImpl> get copyWith =>
      __$$KomikuDetailModelImplCopyWithImpl<_$KomikuDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KomikuDetailModelImplToJson(
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
      final List<KomikuDetailChapterModel> chapters}) = _$KomikuDetailModelImpl;

  factory _KomikuDetailModel.fromJson(Map<String, dynamic> json) =
      _$KomikuDetailModelImpl.fromJson;

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
  _$$KomikuDetailModelImplCopyWith<_$KomikuDetailModelImpl> get copyWith =>
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
abstract class _$$KomikuDetailChapterModelImplCopyWith<$Res>
    implements $KomikuDetailChapterModelCopyWith<$Res> {
  factory _$$KomikuDetailChapterModelImplCopyWith(
          _$KomikuDetailChapterModelImpl value,
          $Res Function(_$KomikuDetailChapterModelImpl) then) =
      __$$KomikuDetailChapterModelImplCopyWithImpl<$Res>;
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
class __$$KomikuDetailChapterModelImplCopyWithImpl<$Res>
    extends _$KomikuDetailChapterModelCopyWithImpl<$Res,
        _$KomikuDetailChapterModelImpl>
    implements _$$KomikuDetailChapterModelImplCopyWith<$Res> {
  __$$KomikuDetailChapterModelImplCopyWithImpl(
      _$KomikuDetailChapterModelImpl _value,
      $Res Function(_$KomikuDetailChapterModelImpl) _then)
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
    return _then(_$KomikuDetailChapterModelImpl(
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
class _$KomikuDetailChapterModelImpl implements _KomikuDetailChapterModel {
  const _$KomikuDetailChapterModelImpl(
      {this.chapter = "",
      this.param = "",
      this.release = "",
      @JsonKey(name: "detail_url") this.detailUrl = "",
      this.isRead = false});

  factory _$KomikuDetailChapterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KomikuDetailChapterModelImplFromJson(json);

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
            other is _$KomikuDetailChapterModelImpl &&
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
  _$$KomikuDetailChapterModelImplCopyWith<_$KomikuDetailChapterModelImpl>
      get copyWith => __$$KomikuDetailChapterModelImplCopyWithImpl<
          _$KomikuDetailChapterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KomikuDetailChapterModelImplToJson(
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
      final bool isRead}) = _$KomikuDetailChapterModelImpl;

  factory _KomikuDetailChapterModel.fromJson(Map<String, dynamic> json) =
      _$KomikuDetailChapterModelImpl.fromJson;

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
  _$$KomikuDetailChapterModelImplCopyWith<_$KomikuDetailChapterModelImpl>
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
abstract class _$$KomikuChapterFetchModelImplCopyWith<$Res>
    implements $KomikuChapterFetchModelCopyWith<$Res> {
  factory _$$KomikuChapterFetchModelImplCopyWith(
          _$KomikuChapterFetchModelImpl value,
          $Res Function(_$KomikuChapterFetchModelImpl) then) =
      __$$KomikuChapterFetchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapterParam, List<String> chapterUrls});
}

/// @nodoc
class __$$KomikuChapterFetchModelImplCopyWithImpl<$Res>
    extends _$KomikuChapterFetchModelCopyWithImpl<$Res,
        _$KomikuChapterFetchModelImpl>
    implements _$$KomikuChapterFetchModelImplCopyWith<$Res> {
  __$$KomikuChapterFetchModelImplCopyWithImpl(
      _$KomikuChapterFetchModelImpl _value,
      $Res Function(_$KomikuChapterFetchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapterParam = null,
    Object? chapterUrls = null,
  }) {
    return _then(_$KomikuChapterFetchModelImpl(
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
class _$KomikuChapterFetchModelImpl implements _KomikuChapterFetchModel {
  const _$KomikuChapterFetchModelImpl(
      {this.chapterParam = "", final List<String> chapterUrls = const []})
      : _chapterUrls = chapterUrls;

  factory _$KomikuChapterFetchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KomikuChapterFetchModelImplFromJson(json);

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
            other is _$KomikuChapterFetchModelImpl &&
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
  _$$KomikuChapterFetchModelImplCopyWith<_$KomikuChapterFetchModelImpl>
      get copyWith => __$$KomikuChapterFetchModelImplCopyWithImpl<
          _$KomikuChapterFetchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KomikuChapterFetchModelImplToJson(
      this,
    );
  }
}

abstract class _KomikuChapterFetchModel implements KomikuChapterFetchModel {
  const factory _KomikuChapterFetchModel(
      {final String chapterParam,
      final List<String> chapterUrls}) = _$KomikuChapterFetchModelImpl;

  factory _KomikuChapterFetchModel.fromJson(Map<String, dynamic> json) =
      _$KomikuChapterFetchModelImpl.fromJson;

  @override

  /// Chapter Param
  String get chapterParam;
  @override

  /// Chapter URls
  List<String> get chapterUrls;
  @override
  @JsonKey(ignore: true)
  _$$KomikuChapterFetchModelImplCopyWith<_$KomikuChapterFetchModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
