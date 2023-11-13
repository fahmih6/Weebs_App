// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppbarVideoState {
  VideoPlayerController? get videoPlayerController =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoPlayerController? videoPlayerController)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerController? videoPlayerController)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController? videoPlayerController)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppbarVideoStateCopyWith<AppbarVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarVideoStateCopyWith<$Res> {
  factory $AppbarVideoStateCopyWith(
          AppbarVideoState value, $Res Function(AppbarVideoState) then) =
      _$AppbarVideoStateCopyWithImpl<$Res, AppbarVideoState>;
  @useResult
  $Res call({VideoPlayerController? videoPlayerController});
}

/// @nodoc
class _$AppbarVideoStateCopyWithImpl<$Res, $Val extends AppbarVideoState>
    implements $AppbarVideoStateCopyWith<$Res> {
  _$AppbarVideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoPlayerController = freezed,
  }) {
    return _then(_value.copyWith(
      videoPlayerController: freezed == videoPlayerController
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $AppbarVideoStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VideoPlayerController? videoPlayerController});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$AppbarVideoStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoPlayerController = freezed,
  }) {
    return _then(_$StateImpl(
      videoPlayerController: freezed == videoPlayerController
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({this.videoPlayerController});

  @override
  final VideoPlayerController? videoPlayerController;

  @override
  String toString() {
    return 'AppbarVideoState.state(videoPlayerController: $videoPlayerController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.videoPlayerController, videoPlayerController) ||
                other.videoPlayerController == videoPlayerController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoPlayerController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoPlayerController? videoPlayerController)
        state,
  }) {
    return state(videoPlayerController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerController? videoPlayerController)? state,
  }) {
    return state?.call(videoPlayerController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController? videoPlayerController)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(videoPlayerController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements AppbarVideoState {
  const factory _State({final VideoPlayerController? videoPlayerController}) =
      _$StateImpl;

  @override
  VideoPlayerController? get videoPlayerController;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
