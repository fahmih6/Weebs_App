// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anoboy_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnoboyListModel _$AnoboyListModelFromJson(Map<String, dynamic> json) {
  return _AnoboyListModel.fromJson(json);
}

/// @nodoc
mixin _$AnoboyListModel {
  /// Max Page of Anoboy Home Screen or Search
  @JsonKey(name: "max_page")
  int get maxPage => throw _privateConstructorUsedError;

  /// Next Page Link
  @JsonKey(name: "next_page")
  String? get nextPage => throw _privateConstructorUsedError;

  /// Previous Page Link
  @JsonKey(name: "prev_page")
  String? get prevPage => throw _privateConstructorUsedError;

  /// Anime List Data
  List<AnoboyListItemModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyListModelCopyWith<AnoboyListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyListModelCopyWith<$Res> {
  factory $AnoboyListModelCopyWith(
          AnoboyListModel value, $Res Function(AnoboyListModel) then) =
      _$AnoboyListModelCopyWithImpl<$Res, AnoboyListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "max_page") int maxPage,
      @JsonKey(name: "next_page") String? nextPage,
      @JsonKey(name: "prev_page") String? prevPage,
      List<AnoboyListItemModel> data});
}

/// @nodoc
class _$AnoboyListModelCopyWithImpl<$Res, $Val extends AnoboyListModel>
    implements $AnoboyListModelCopyWith<$Res> {
  _$AnoboyListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<AnoboyListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnoboyListModelImplCopyWith<$Res>
    implements $AnoboyListModelCopyWith<$Res> {
  factory _$$AnoboyListModelImplCopyWith(_$AnoboyListModelImpl value,
          $Res Function(_$AnoboyListModelImpl) then) =
      __$$AnoboyListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "max_page") int maxPage,
      @JsonKey(name: "next_page") String? nextPage,
      @JsonKey(name: "prev_page") String? prevPage,
      List<AnoboyListItemModel> data});
}

/// @nodoc
class __$$AnoboyListModelImplCopyWithImpl<$Res>
    extends _$AnoboyListModelCopyWithImpl<$Res, _$AnoboyListModelImpl>
    implements _$$AnoboyListModelImplCopyWith<$Res> {
  __$$AnoboyListModelImplCopyWithImpl(
      _$AnoboyListModelImpl _value, $Res Function(_$AnoboyListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? data = null,
  }) {
    return _then(_$AnoboyListModelImpl(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnoboyListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnoboyListModelImpl implements _AnoboyListModel {
  const _$AnoboyListModelImpl(
      {@JsonKey(name: "max_page") this.maxPage = 0,
      @JsonKey(name: "next_page") this.nextPage,
      @JsonKey(name: "prev_page") this.prevPage,
      final List<AnoboyListItemModel> data = const []})
      : _data = data;

  factory _$AnoboyListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnoboyListModelImplFromJson(json);

  /// Max Page of Anoboy Home Screen or Search
  @override
  @JsonKey(name: "max_page")
  final int maxPage;

  /// Next Page Link
  @override
  @JsonKey(name: "next_page")
  final String? nextPage;

  /// Previous Page Link
  @override
  @JsonKey(name: "prev_page")
  final String? prevPage;

  /// Anime List Data
  final List<AnoboyListItemModel> _data;

  /// Anime List Data
  @override
  @JsonKey()
  List<AnoboyListItemModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnoboyListModel(maxPage: $maxPage, nextPage: $nextPage, prevPage: $prevPage, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnoboyListModelImpl &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPage, nextPage, prevPage,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnoboyListModelImplCopyWith<_$AnoboyListModelImpl> get copyWith =>
      __$$AnoboyListModelImplCopyWithImpl<_$AnoboyListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnoboyListModelImplToJson(
      this,
    );
  }
}

abstract class _AnoboyListModel implements AnoboyListModel {
  const factory _AnoboyListModel(
      {@JsonKey(name: "max_page") final int maxPage,
      @JsonKey(name: "next_page") final String? nextPage,
      @JsonKey(name: "prev_page") final String? prevPage,
      final List<AnoboyListItemModel> data}) = _$AnoboyListModelImpl;

  factory _AnoboyListModel.fromJson(Map<String, dynamic> json) =
      _$AnoboyListModelImpl.fromJson;

  @override

  /// Max Page of Anoboy Home Screen or Search
  @JsonKey(name: "max_page")
  int get maxPage;
  @override

  /// Next Page Link
  @JsonKey(name: "next_page")
  String? get nextPage;
  @override

  /// Previous Page Link
  @JsonKey(name: "prev_page")
  String? get prevPage;
  @override

  /// Anime List Data
  List<AnoboyListItemModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$AnoboyListModelImplCopyWith<_$AnoboyListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnoboyListItemModel _$AnoboyListItemModelFromJson(Map<String, dynamic> json) {
  return _AnoboyListItemModel.fromJson(json);
}

/// @nodoc
mixin _$AnoboyListItemModel {
  /// Anime Title
  String get title => throw _privateConstructorUsedError;

  /// Anime parameter used for get anime detail from server
  String get param => throw _privateConstructorUsedError;

  /// Anime thumbnail
  String get thumbnail => throw _privateConstructorUsedError;

  /// Upload time from anoboy
  @JsonKey(name: 'upload_time')
  String get uploadTime => throw _privateConstructorUsedError;

  /// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
  @JsonKey(name: 'detail_url')
  String get detailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnoboyListItemModelCopyWith<AnoboyListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnoboyListItemModelCopyWith<$Res> {
  factory $AnoboyListItemModelCopyWith(
          AnoboyListItemModel value, $Res Function(AnoboyListItemModel) then) =
      _$AnoboyListItemModelCopyWithImpl<$Res, AnoboyListItemModel>;
  @useResult
  $Res call(
      {String title,
      String param,
      String thumbnail,
      @JsonKey(name: 'upload_time') String uploadTime,
      @JsonKey(name: 'detail_url') String detailUrl});
}

/// @nodoc
class _$AnoboyListItemModelCopyWithImpl<$Res, $Val extends AnoboyListItemModel>
    implements $AnoboyListItemModelCopyWith<$Res> {
  _$AnoboyListItemModelCopyWithImpl(this._value, this._then);

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
    Object? uploadTime = null,
    Object? detailUrl = null,
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
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as String,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnoboyListItemModelImplCopyWith<$Res>
    implements $AnoboyListItemModelCopyWith<$Res> {
  factory _$$AnoboyListItemModelImplCopyWith(_$AnoboyListItemModelImpl value,
          $Res Function(_$AnoboyListItemModelImpl) then) =
      __$$AnoboyListItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String param,
      String thumbnail,
      @JsonKey(name: 'upload_time') String uploadTime,
      @JsonKey(name: 'detail_url') String detailUrl});
}

/// @nodoc
class __$$AnoboyListItemModelImplCopyWithImpl<$Res>
    extends _$AnoboyListItemModelCopyWithImpl<$Res, _$AnoboyListItemModelImpl>
    implements _$$AnoboyListItemModelImplCopyWith<$Res> {
  __$$AnoboyListItemModelImplCopyWithImpl(_$AnoboyListItemModelImpl _value,
      $Res Function(_$AnoboyListItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? param = null,
    Object? thumbnail = null,
    Object? uploadTime = null,
    Object? detailUrl = null,
  }) {
    return _then(_$AnoboyListItemModelImpl(
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
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
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
class _$AnoboyListItemModelImpl implements _AnoboyListItemModel {
  const _$AnoboyListItemModelImpl(
      {this.title = "",
      this.param = "",
      this.thumbnail = "",
      @JsonKey(name: 'upload_time') this.uploadTime = "",
      @JsonKey(name: 'detail_url') this.detailUrl = ""});

  factory _$AnoboyListItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnoboyListItemModelImplFromJson(json);

  /// Anime Title
  @override
  @JsonKey()
  final String title;

  /// Anime parameter used for get anime detail from server
  @override
  @JsonKey()
  final String param;

  /// Anime thumbnail
  @override
  @JsonKey()
  final String thumbnail;

  /// Upload time from anoboy
  @override
  @JsonKey(name: 'upload_time')
  final String uploadTime;

  /// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
  @override
  @JsonKey(name: 'detail_url')
  final String detailUrl;

  @override
  String toString() {
    return 'AnoboyListItemModel(title: $title, param: $param, thumbnail: $thumbnail, uploadTime: $uploadTime, detailUrl: $detailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnoboyListItemModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.uploadTime, uploadTime) ||
                other.uploadTime == uploadTime) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, param, thumbnail, uploadTime, detailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnoboyListItemModelImplCopyWith<_$AnoboyListItemModelImpl> get copyWith =>
      __$$AnoboyListItemModelImplCopyWithImpl<_$AnoboyListItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnoboyListItemModelImplToJson(
      this,
    );
  }
}

abstract class _AnoboyListItemModel implements AnoboyListItemModel {
  const factory _AnoboyListItemModel(
          {final String title,
          final String param,
          final String thumbnail,
          @JsonKey(name: 'upload_time') final String uploadTime,
          @JsonKey(name: 'detail_url') final String detailUrl}) =
      _$AnoboyListItemModelImpl;

  factory _AnoboyListItemModel.fromJson(Map<String, dynamic> json) =
      _$AnoboyListItemModelImpl.fromJson;

  @override

  /// Anime Title
  String get title;
  @override

  /// Anime parameter used for get anime detail from server
  String get param;
  @override

  /// Anime thumbnail
  String get thumbnail;
  @override

  /// Upload time from anoboy
  @JsonKey(name: 'upload_time')
  String get uploadTime;
  @override

  /// Direct link to get anime detail (Video Embed Link or Video Direct Link if we are using API v2)
  @JsonKey(name: 'detail_url')
  String get detailUrl;
  @override
  @JsonKey(ignore: true)
  _$$AnoboyListItemModelImplCopyWith<_$AnoboyListItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
