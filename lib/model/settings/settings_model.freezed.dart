// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  /// Anoboy App Bar Video Playback.
  bool get anoboyAppBarVideo => throw _privateConstructorUsedError;

  /// Komik Read Image Mode
  dynamic get komikReadImageMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call({bool anoboyAppBarVideo, dynamic komikReadImageMode});
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyAppBarVideo = null,
    Object? komikReadImageMode = freezed,
  }) {
    return _then(_value.copyWith(
      anoboyAppBarVideo: null == anoboyAppBarVideo
          ? _value.anoboyAppBarVideo
          : anoboyAppBarVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      komikReadImageMode: freezed == komikReadImageMode
          ? _value.komikReadImageMode
          : komikReadImageMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool anoboyAppBarVideo, dynamic komikReadImageMode});
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyAppBarVideo = null,
    Object? komikReadImageMode = freezed,
  }) {
    return _then(_$SettingsModelImpl(
      anoboyAppBarVideo: null == anoboyAppBarVideo
          ? _value.anoboyAppBarVideo
          : anoboyAppBarVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      komikReadImageMode: freezed == komikReadImageMode
          ? _value.komikReadImageMode!
          : komikReadImageMode,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SettingsModelImpl implements _SettingsModel {
  const _$SettingsModelImpl(
      {this.anoboyAppBarVideo = false,
      this.komikReadImageMode = KomikReadImageMode.normal});

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  /// Anoboy App Bar Video Playback.
  @override
  @JsonKey()
  final bool anoboyAppBarVideo;

  /// Komik Read Image Mode
  @override
  @JsonKey()
  final dynamic komikReadImageMode;

  @override
  String toString() {
    return 'SettingsModel(anoboyAppBarVideo: $anoboyAppBarVideo, komikReadImageMode: $komikReadImageMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.anoboyAppBarVideo, anoboyAppBarVideo) ||
                other.anoboyAppBarVideo == anoboyAppBarVideo) &&
            const DeepCollectionEquality()
                .equals(other.komikReadImageMode, komikReadImageMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, anoboyAppBarVideo,
      const DeepCollectionEquality().hash(komikReadImageMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(
      this,
    );
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel(
      {final bool anoboyAppBarVideo,
      final dynamic komikReadImageMode}) = _$SettingsModelImpl;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override

  /// Anoboy App Bar Video Playback.
  bool get anoboyAppBarVideo;
  @override

  /// Komik Read Image Mode
  dynamic get komikReadImageMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
