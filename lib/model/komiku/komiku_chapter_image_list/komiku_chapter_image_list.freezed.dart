// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_chapter_image_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KomikuChapterImageListModel _$KomikuChapterImageListModelFromJson(
    Map<String, dynamic> json) {
  return _KomikuChapterImageListModel.fromJson(json);
}

/// @nodoc
mixin _$KomikuChapterImageListModel {
  List<String> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KomikuChapterImageListModelCopyWith<KomikuChapterImageListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuChapterImageListModelCopyWith<$Res> {
  factory $KomikuChapterImageListModelCopyWith(
          KomikuChapterImageListModel value,
          $Res Function(KomikuChapterImageListModel) then) =
      _$KomikuChapterImageListModelCopyWithImpl<$Res,
          KomikuChapterImageListModel>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class _$KomikuChapterImageListModelCopyWithImpl<$Res,
        $Val extends KomikuChapterImageListModel>
    implements $KomikuChapterImageListModelCopyWith<$Res> {
  _$KomikuChapterImageListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KomikuChapterImageListModelImplCopyWith<$Res>
    implements $KomikuChapterImageListModelCopyWith<$Res> {
  factory _$$KomikuChapterImageListModelImplCopyWith(
          _$KomikuChapterImageListModelImpl value,
          $Res Function(_$KomikuChapterImageListModelImpl) then) =
      __$$KomikuChapterImageListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$KomikuChapterImageListModelImplCopyWithImpl<$Res>
    extends _$KomikuChapterImageListModelCopyWithImpl<$Res,
        _$KomikuChapterImageListModelImpl>
    implements _$$KomikuChapterImageListModelImplCopyWith<$Res> {
  __$$KomikuChapterImageListModelImplCopyWithImpl(
      _$KomikuChapterImageListModelImpl _value,
      $Res Function(_$KomikuChapterImageListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$KomikuChapterImageListModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KomikuChapterImageListModelImpl
    implements _KomikuChapterImageListModel {
  const _$KomikuChapterImageListModelImpl({final List<String> data = const []})
      : _data = data;

  factory _$KomikuChapterImageListModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KomikuChapterImageListModelImplFromJson(json);

  final List<String> _data;
  @override
  @JsonKey()
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'KomikuChapterImageListModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KomikuChapterImageListModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KomikuChapterImageListModelImplCopyWith<_$KomikuChapterImageListModelImpl>
      get copyWith => __$$KomikuChapterImageListModelImplCopyWithImpl<
          _$KomikuChapterImageListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KomikuChapterImageListModelImplToJson(
      this,
    );
  }
}

abstract class _KomikuChapterImageListModel
    implements KomikuChapterImageListModel {
  const factory _KomikuChapterImageListModel({final List<String> data}) =
      _$KomikuChapterImageListModelImpl;

  factory _KomikuChapterImageListModel.fromJson(Map<String, dynamic> json) =
      _$KomikuChapterImageListModelImpl.fromJson;

  @override
  List<String> get data;
  @override
  @JsonKey(ignore: true)
  _$$KomikuChapterImageListModelImplCopyWith<_$KomikuChapterImageListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
