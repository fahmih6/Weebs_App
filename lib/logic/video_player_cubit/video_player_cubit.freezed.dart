// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPlayerState {
  ChewieController? get chewieController => throw _privateConstructorUsedError;
  Duration? get lastPosition => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChewieController? chewieController,
            Duration? lastPosition, String? url)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChewieController? chewieController,
            Duration? lastPosition, String? url)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChewieController? chewieController, Duration? lastPosition,
            String? url)?
        state,
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
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
  @useResult
  $Res call(
      {ChewieController? chewieController,
      Duration? lastPosition,
      String? url});
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chewieController = freezed,
    Object? lastPosition = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      lastPosition: freezed == lastPosition
          ? _value.lastPosition
          : lastPosition // ignore: cast_nullable_to_non_nullable
              as Duration?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChewieController? chewieController,
      Duration? lastPosition,
      String? url});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chewieController = freezed,
    Object? lastPosition = freezed,
    Object? url = freezed,
  }) {
    return _then(_$StateImpl(
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
      lastPosition: freezed == lastPosition
          ? _value.lastPosition
          : lastPosition // ignore: cast_nullable_to_non_nullable
              as Duration?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateImpl with DiagnosticableTreeMixin implements _State {
  const _$StateImpl({this.chewieController, this.lastPosition, this.url});

  @override
  final ChewieController? chewieController;
  @override
  final Duration? lastPosition;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState.state(chewieController: $chewieController, lastPosition: $lastPosition, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoPlayerState.state'))
      ..add(DiagnosticsProperty('chewieController', chewieController))
      ..add(DiagnosticsProperty('lastPosition', lastPosition))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.chewieController, chewieController) ||
                other.chewieController == chewieController) &&
            (identical(other.lastPosition, lastPosition) ||
                other.lastPosition == lastPosition) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chewieController, lastPosition, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChewieController? chewieController,
            Duration? lastPosition, String? url)
        state,
  }) {
    return state(chewieController, lastPosition, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChewieController? chewieController,
            Duration? lastPosition, String? url)?
        state,
  }) {
    return state?.call(chewieController, lastPosition, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChewieController? chewieController, Duration? lastPosition,
            String? url)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(chewieController, lastPosition, url);
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

abstract class _State implements VideoPlayerState {
  const factory _State(
      {final ChewieController? chewieController,
      final Duration? lastPosition,
      final String? url}) = _$StateImpl;

  @override
  ChewieController? get chewieController;
  @override
  Duration? get lastPosition;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
