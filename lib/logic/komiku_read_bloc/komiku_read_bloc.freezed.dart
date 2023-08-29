// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komiku_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KomikuReadEvent {
  KomikuDetailModel get komikuData => throw _privateConstructorUsedError;
  String get chapterParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KomikuDetailModel komikuData, String chapterParam)
        markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KomikuDetailModel komikuData, String chapterParam)?
        markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KomikuDetailModel komikuData, String chapterParam)?
        markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkAsRead value) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KomikuReadEventCopyWith<KomikuReadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuReadEventCopyWith<$Res> {
  factory $KomikuReadEventCopyWith(
          KomikuReadEvent value, $Res Function(KomikuReadEvent) then) =
      _$KomikuReadEventCopyWithImpl<$Res, KomikuReadEvent>;
  @useResult
  $Res call({KomikuDetailModel komikuData, String chapterParam});

  $KomikuDetailModelCopyWith<$Res> get komikuData;
}

/// @nodoc
class _$KomikuReadEventCopyWithImpl<$Res, $Val extends KomikuReadEvent>
    implements $KomikuReadEventCopyWith<$Res> {
  _$KomikuReadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? komikuData = null,
    Object? chapterParam = null,
  }) {
    return _then(_value.copyWith(
      komikuData: null == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel,
      chapterParam: null == chapterParam
          ? _value.chapterParam
          : chapterParam // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KomikuDetailModelCopyWith<$Res> get komikuData {
    return $KomikuDetailModelCopyWith<$Res>(_value.komikuData, (value) {
      return _then(_value.copyWith(komikuData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarkAsReadCopyWith<$Res>
    implements $KomikuReadEventCopyWith<$Res> {
  factory _$$_MarkAsReadCopyWith(
          _$_MarkAsRead value, $Res Function(_$_MarkAsRead) then) =
      __$$_MarkAsReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KomikuDetailModel komikuData, String chapterParam});

  @override
  $KomikuDetailModelCopyWith<$Res> get komikuData;
}

/// @nodoc
class __$$_MarkAsReadCopyWithImpl<$Res>
    extends _$KomikuReadEventCopyWithImpl<$Res, _$_MarkAsRead>
    implements _$$_MarkAsReadCopyWith<$Res> {
  __$$_MarkAsReadCopyWithImpl(
      _$_MarkAsRead _value, $Res Function(_$_MarkAsRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? komikuData = null,
    Object? chapterParam = null,
  }) {
    return _then(_$_MarkAsRead(
      komikuData: null == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel,
      chapterParam: null == chapterParam
          ? _value.chapterParam
          : chapterParam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MarkAsRead implements _MarkAsRead {
  const _$_MarkAsRead({required this.komikuData, required this.chapterParam});

  @override
  final KomikuDetailModel komikuData;
  @override
  final String chapterParam;

  @override
  String toString() {
    return 'KomikuReadEvent.markAsRead(komikuData: $komikuData, chapterParam: $chapterParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkAsRead &&
            (identical(other.komikuData, komikuData) ||
                other.komikuData == komikuData) &&
            (identical(other.chapterParam, chapterParam) ||
                other.chapterParam == chapterParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, komikuData, chapterParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkAsReadCopyWith<_$_MarkAsRead> get copyWith =>
      __$$_MarkAsReadCopyWithImpl<_$_MarkAsRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KomikuDetailModel komikuData, String chapterParam)
        markAsRead,
  }) {
    return markAsRead(komikuData, chapterParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KomikuDetailModel komikuData, String chapterParam)?
        markAsRead,
  }) {
    return markAsRead?.call(komikuData, chapterParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KomikuDetailModel komikuData, String chapterParam)?
        markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(komikuData, chapterParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements KomikuReadEvent {
  const factory _MarkAsRead(
      {required final KomikuDetailModel komikuData,
      required final String chapterParam}) = _$_MarkAsRead;

  @override
  KomikuDetailModel get komikuData;
  @override
  String get chapterParam;
  @override
  @JsonKey(ignore: true)
  _$$_MarkAsReadCopyWith<_$_MarkAsRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KomikuReadState {
  List<KomikuDetailModel> get komikuList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KomikuDetailModel> komikuList) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KomikuDetailModel> komikuList)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KomikuDetailModel> komikuList)? state,
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
  $KomikuReadStateCopyWith<KomikuReadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KomikuReadStateCopyWith<$Res> {
  factory $KomikuReadStateCopyWith(
          KomikuReadState value, $Res Function(KomikuReadState) then) =
      _$KomikuReadStateCopyWithImpl<$Res, KomikuReadState>;
  @useResult
  $Res call({List<KomikuDetailModel> komikuList});
}

/// @nodoc
class _$KomikuReadStateCopyWithImpl<$Res, $Val extends KomikuReadState>
    implements $KomikuReadStateCopyWith<$Res> {
  _$KomikuReadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? komikuList = null,
  }) {
    return _then(_value.copyWith(
      komikuList: null == komikuList
          ? _value.komikuList
          : komikuList // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $KomikuReadStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KomikuDetailModel> komikuList});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$KomikuReadStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? komikuList = null,
  }) {
    return _then(_$_State(
      komikuList: null == komikuList
          ? _value._komikuList
          : komikuList // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailModel>,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State({final List<KomikuDetailModel> komikuList = const []})
      : _komikuList = komikuList;

  final List<KomikuDetailModel> _komikuList;
  @override
  @JsonKey()
  List<KomikuDetailModel> get komikuList {
    if (_komikuList is EqualUnmodifiableListView) return _komikuList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_komikuList);
  }

  @override
  String toString() {
    return 'KomikuReadState.state(komikuList: $komikuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality()
                .equals(other._komikuList, _komikuList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_komikuList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<KomikuDetailModel> komikuList) state,
  }) {
    return state(komikuList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<KomikuDetailModel> komikuList)? state,
  }) {
    return state?.call(komikuList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<KomikuDetailModel> komikuList)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(komikuList);
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

abstract class _State implements KomikuReadState {
  const factory _State({final List<KomikuDetailModel> komikuList}) = _$_State;

  @override
  List<KomikuDetailModel> get komikuList;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
