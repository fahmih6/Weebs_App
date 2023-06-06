// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KomikuListModel _$KomikuListModelFromJson(Map<String, dynamic> json) {
  return _KomikuListModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuListModel {
  @JsonKey(name: "next_page")
  String? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page")
  String? get prevPage => throw _privateConstructorUsedError;
  List<KomikuListItemModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuListModelCopyWith<KomikuListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuListModelCopyWith<$Res> {
  factory $KomikuListModelCopyWith(
          KomikuListModel value, $Res Function(KomikuListModel) then) =
      _$KomikuListModelCopyWithImpl<$Res, KomikuListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "next_page") String? nextPage,
      @JsonKey(name: "prev_page") String? prevPage,
      List<KomikuListItemModel> data});
}

/// @nodoc
class _$KomikuListModelCopyWithImpl<$Res, $Val extends KomikuListModel>
    implements $KomikuListModelCopyWith<$Res> {
  _$KomikuListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KomikuListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KomikuListModelCopyWith<$Res>
    implements $KomikuListModelCopyWith<$Res> {
  factory _$$_KomikuListModelCopyWith(
          _$_KomikuListModel value, $Res Function(_$_KomikuListModel) then) =
      __$$_KomikuListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "next_page") String? nextPage,
      @JsonKey(name: "prev_page") String? prevPage,
      List<KomikuListItemModel> data});
}

/// @nodoc
class __$$_KomikuListModelCopyWithImpl<$Res>
    extends _$KomikuListModelCopyWithImpl<$Res, _$_KomikuListModel>
    implements _$$_KomikuListModelCopyWith<$Res> {
  __$$_KomikuListModelCopyWithImpl(
      _$_KomikuListModel _value, $Res Function(_$_KomikuListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? data = null,
  }) {
    return _then(_$_KomikuListModel(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KomikuListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KomikuListModel implements _KomikuListModel {
  const _$_KomikuListModel(
      {@JsonKey(name: "next_page") this.nextPage,
      @JsonKey(name: "prev_page") this.prevPage,
      this.data = const []});

  factory _$_KomikuListModel.fromJson(Map<String, dynamic> json) =>
      _$$_KomikuListModelFromJson(json);

  @override
  @JsonKey(name: "next_page")
  final String? nextPage;
  @override
  @JsonKey(name: "prev_page")
  final String? prevPage;
  @override
  @JsonKey()
  final List<KomikuListItemModel> data;

  @override
  String toString() {
    return 'KomikuListModel(nextPage: $nextPage, prevPage: $prevPage, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KomikuListModel &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextPage, prevPage,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KomikuListModelCopyWith<_$_KomikuListModel> get copyWith =>
      __$$_KomikuListModelCopyWithImpl<_$_KomikuListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KomikuListModelToJson(
      this,
    );
  }
}

abstract class _KomikuListModel implements KomikuListModel {
  const factory _KomikuListModel(
      {@JsonKey(name: "next_page") final String? nextPage,
      @JsonKey(name: "prev_page") final String? prevPage,
      final List<KomikuListItemModel> data}) = _$_KomikuListModel;

  factory _KomikuListModel.fromJson(Map<String, dynamic> json) =
      _$_KomikuListModel.fromJson;

  @override
  @JsonKey(name: "next_page")
  String? get nextPage;
  @override
  @JsonKey(name: "prev_page")
  String? get prevPage;
  @override
  List<KomikuListItemModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_KomikuListModelCopyWith<_$_KomikuListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

KomikuListItemModel _$KomikuListItemModelFromJson(Map<String, dynamic> json) {
  return _KomikuListItemModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuListItemModel {
  /// Manga Title
  String get title => throw _privateConstructorUsedError;

  /// Manga Thumbnail
  String get thumbnail => throw _privateConstructorUsedError;

  /// Manga Param
  String get param => throw _privateConstructorUsedError;

  /// Manga Latest Chapter
  @JsonKey(name: "latest_chapter")
  String get latestChapter => throw _privateConstructorUsedError;

  /// Direct detail url
  @JsonKey(name: "detail_url")
  String get detailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuListItemModelCopyWith<KomikuListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuListItemModelCopyWith<$Res> {
  factory $KomikuListItemModelCopyWith(
          KomikuListItemModel value, $Res Function(KomikuListItemModel) then) =
      _$KomikuListItemModelCopyWithImpl<$Res, KomikuListItemModel>;
  @useResult
  $Res call(
      {String title,
      String thumbnail,
      String param,
      @JsonKey(name: "latest_chapter") String latestChapter,
      @JsonKey(name: "detail_url") String detailUrl});
}

/// @nodoc
class _$KomikuListItemModelCopyWithImpl<$Res, $Val extends KomikuListItemModel>
    implements $KomikuListItemModelCopyWith<$Res> {
  _$KomikuListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? param = null,
    Object? latestChapter = null,
    Object? detailUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      latestChapter: null == latestChapter
          ? _value.latestChapter
          : latestChapter // ignore: cast_nullable_to_non_nullable
              as String,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KomikuListItemModelCopyWith<$Res>
    implements $KomikuListItemModelCopyWith<$Res> {
  factory _$$_KomikuListItemModelCopyWith(_$_KomikuListItemModel value,
          $Res Function(_$_KomikuListItemModel) then) =
      __$$_KomikuListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String thumbnail,
      String param,
      @JsonKey(name: "latest_chapter") String latestChapter,
      @JsonKey(name: "detail_url") String detailUrl});
}

/// @nodoc
class __$$_KomikuListItemModelCopyWithImpl<$Res>
    extends _$KomikuListItemModelCopyWithImpl<$Res, _$_KomikuListItemModel>
    implements _$$_KomikuListItemModelCopyWith<$Res> {
  __$$_KomikuListItemModelCopyWithImpl(_$_KomikuListItemModel _value,
      $Res Function(_$_KomikuListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? param = null,
    Object? latestChapter = null,
    Object? detailUrl = null,
  }) {
    return _then(_$_KomikuListItemModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      latestChapter: null == latestChapter
          ? _value.latestChapter
          : latestChapter // ignore: cast_nullable_to_non_nullable
              as String,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KomikuListItemModel implements _KomikuListItemModel {
  const _$_KomikuListItemModel(
      {this.title = "",
      this.thumbnail = "",
      this.param = "",
      @JsonKey(name: "latest_chapter") this.latestChapter = "",
      @JsonKey(name: "detail_url") this.detailUrl = ""});

  factory _$_KomikuListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_KomikuListItemModelFromJson(json);

  /// Manga Title
  @override
  @JsonKey()
  final String title;

  /// Manga Thumbnail
  @override
  @JsonKey()
  final String thumbnail;

  /// Manga Param
  @override
  @JsonKey()
  final String param;

  /// Manga Latest Chapter
  @override
  @JsonKey(name: "latest_chapter")
  final String latestChapter;

  /// Direct detail url
  @override
  @JsonKey(name: "detail_url")
  final String detailUrl;

  @override
  String toString() {
    return 'KomikuListItemModel(title: $title, thumbnail: $thumbnail, param: $param, latestChapter: $latestChapter, detailUrl: $detailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KomikuListItemModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.latestChapter, latestChapter) ||
                other.latestChapter == latestChapter) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, thumbnail, param, latestChapter, detailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KomikuListItemModelCopyWith<_$_KomikuListItemModel> get copyWith =>
      __$$_KomikuListItemModelCopyWithImpl<_$_KomikuListItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KomikuListItemModelToJson(
      this,
    );
  }
}

abstract class _KomikuListItemModel implements KomikuListItemModel {
  const factory _KomikuListItemModel(
          {final String title,
          final String thumbnail,
          final String param,
          @JsonKey(name: "latest_chapter") final String latestChapter,
          @JsonKey(name: "detail_url") final String detailUrl}) =
      _$_KomikuListItemModel;

  factory _KomikuListItemModel.fromJson(Map<String, dynamic> json) =
      _$_KomikuListItemModel.fromJson;

  @override

  /// Manga Title
  String get title;
  @override

  /// Manga Thumbnail
  String get thumbnail;
  @override

  /// Manga Param
  String get param;
  @override

  /// Manga Latest Chapter
  @JsonKey(name: "latest_chapter")
  String get latestChapter;
  @override

  /// Direct detail url
  @JsonKey(name: "detail_url")
  String get detailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_KomikuListItemModelCopyWith<_$_KomikuListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
