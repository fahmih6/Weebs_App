// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesEvent {
  AnoboyDetailModel? get anoboyData => throw _privateConstructorUsedError;
  KomikuDetailModel? get komikuData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        added,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        removed,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Removed value)? removed,
    TResult? Function(_Edited value)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesEventCopyWith<FavouritesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_value.copyWith(
      anoboyData: freezed == anoboyData
          ? _value.anoboyData
          : anoboyData // ignore: cast_nullable_to_non_nullable
              as AnoboyDetailModel?,
      komikuData: freezed == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData {
    if (_value.anoboyData == null) {
      return null;
    }

    return $AnoboyDetailModelCopyWith<$Res>(_value.anoboyData!, (value) {
      return _then(_value.copyWith(anoboyData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $KomikuDetailModelCopyWith<$Res>? get komikuData {
    if (_value.komikuData == null) {
      return null;
    }

    return $KomikuDetailModelCopyWith<$Res>(_value.komikuData!, (value) {
      return _then(_value.copyWith(komikuData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$AddedImpl(
      anoboyData: freezed == anoboyData
          ? _value.anoboyData
          : anoboyData // ignore: cast_nullable_to_non_nullable
              as AnoboyDetailModel?,
      komikuData: freezed == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel?,
    ));
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl({this.anoboyData, this.komikuData});

  @override
  final AnoboyDetailModel? anoboyData;
  @override
  final KomikuDetailModel? komikuData;

  @override
  String toString() {
    return 'FavouritesEvent.added(anoboyData: $anoboyData, komikuData: $komikuData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.anoboyData, anoboyData) ||
                other.anoboyData == anoboyData) &&
            (identical(other.komikuData, komikuData) ||
                other.komikuData == komikuData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anoboyData, komikuData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        added,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        removed,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        edited,
  }) {
    return added(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
  }) {
    return added?.call(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(anoboyData, komikuData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Removed value)? removed,
    TResult? Function(_Edited value)? edited,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements FavouritesEvent {
  const factory _Added(
      {final AnoboyDetailModel? anoboyData,
      final KomikuDetailModel? komikuData}) = _$AddedImpl;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedImplCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$RemovedImplCopyWith(
          _$RemovedImpl value, $Res Function(_$RemovedImpl) then) =
      __$$RemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$RemovedImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$RemovedImpl>
    implements _$$RemovedImplCopyWith<$Res> {
  __$$RemovedImplCopyWithImpl(
      _$RemovedImpl _value, $Res Function(_$RemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$RemovedImpl(
      anoboyData: freezed == anoboyData
          ? _value.anoboyData
          : anoboyData // ignore: cast_nullable_to_non_nullable
              as AnoboyDetailModel?,
      komikuData: freezed == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel?,
    ));
  }
}

/// @nodoc

class _$RemovedImpl implements _Removed {
  const _$RemovedImpl({this.anoboyData, this.komikuData});

  @override
  final AnoboyDetailModel? anoboyData;
  @override
  final KomikuDetailModel? komikuData;

  @override
  String toString() {
    return 'FavouritesEvent.removed(anoboyData: $anoboyData, komikuData: $komikuData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedImpl &&
            (identical(other.anoboyData, anoboyData) ||
                other.anoboyData == anoboyData) &&
            (identical(other.komikuData, komikuData) ||
                other.komikuData == komikuData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anoboyData, komikuData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedImplCopyWith<_$RemovedImpl> get copyWith =>
      __$$RemovedImplCopyWithImpl<_$RemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        added,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        removed,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        edited,
  }) {
    return removed(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
  }) {
    return removed?.call(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(anoboyData, komikuData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Removed value)? removed,
    TResult? Function(_Edited value)? edited,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _Removed implements FavouritesEvent {
  const factory _Removed(
      {final AnoboyDetailModel? anoboyData,
      final KomikuDetailModel? komikuData}) = _$RemovedImpl;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$RemovedImplCopyWith<_$RemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditedImplCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$EditedImplCopyWith(
          _$EditedImpl value, $Res Function(_$EditedImpl) then) =
      __$$EditedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$EditedImpl(
      anoboyData: freezed == anoboyData
          ? _value.anoboyData
          : anoboyData // ignore: cast_nullable_to_non_nullable
              as AnoboyDetailModel?,
      komikuData: freezed == komikuData
          ? _value.komikuData
          : komikuData // ignore: cast_nullable_to_non_nullable
              as KomikuDetailModel?,
    ));
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl({this.anoboyData, this.komikuData});

  @override
  final AnoboyDetailModel? anoboyData;
  @override
  final KomikuDetailModel? komikuData;

  @override
  String toString() {
    return 'FavouritesEvent.edited(anoboyData: $anoboyData, komikuData: $komikuData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.anoboyData, anoboyData) ||
                other.anoboyData == anoboyData) &&
            (identical(other.komikuData, komikuData) ||
                other.komikuData == komikuData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anoboyData, komikuData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        added,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        removed,
    required TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)
        edited,
  }) {
    return edited(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult? Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
  }) {
    return edited?.call(anoboyData, komikuData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        added,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        removed,
    TResult Function(
            AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData)?
        edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(anoboyData, komikuData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Removed value)? removed,
    TResult? Function(_Edited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements FavouritesEvent {
  const factory _Edited(
      {final AnoboyDetailModel? anoboyData,
      final KomikuDetailModel? komikuData}) = _$EditedImpl;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouritesState {
  List<AnoboyDetailModel> get anoboyList => throw _privateConstructorUsedError;
  List<KomikuDetailModel> get komikuList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)?
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
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call(
      {List<AnoboyDetailModel> anoboyList, List<KomikuDetailModel> komikuList});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyList = null,
    Object? komikuList = null,
  }) {
    return _then(_value.copyWith(
      anoboyList: null == anoboyList
          ? _value.anoboyList
          : anoboyList // ignore: cast_nullable_to_non_nullable
              as List<AnoboyDetailModel>,
      komikuList: null == komikuList
          ? _value.komikuList
          : komikuList // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AnoboyDetailModel> anoboyList, List<KomikuDetailModel> komikuList});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyList = null,
    Object? komikuList = null,
  }) {
    return _then(_$StateImpl(
      anoboyList: null == anoboyList
          ? _value._anoboyList
          : anoboyList // ignore: cast_nullable_to_non_nullable
              as List<AnoboyDetailModel>,
      komikuList: null == komikuList
          ? _value._komikuList
          : komikuList // ignore: cast_nullable_to_non_nullable
              as List<KomikuDetailModel>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {final List<AnoboyDetailModel> anoboyList = const [],
      final List<KomikuDetailModel> komikuList = const []})
      : _anoboyList = anoboyList,
        _komikuList = komikuList;

  final List<AnoboyDetailModel> _anoboyList;
  @override
  @JsonKey()
  List<AnoboyDetailModel> get anoboyList {
    if (_anoboyList is EqualUnmodifiableListView) return _anoboyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anoboyList);
  }

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
    return 'FavouritesState.state(anoboyList: $anoboyList, komikuList: $komikuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality()
                .equals(other._anoboyList, _anoboyList) &&
            const DeepCollectionEquality()
                .equals(other._komikuList, _komikuList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_anoboyList),
      const DeepCollectionEquality().hash(_komikuList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)
        state,
  }) {
    return state(anoboyList, komikuList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)?
        state,
  }) {
    return state?.call(anoboyList, komikuList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnoboyDetailModel> anoboyList,
            List<KomikuDetailModel> komikuList)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(anoboyList, komikuList);
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

abstract class _State implements FavouritesState {
  const factory _State(
      {final List<AnoboyDetailModel> anoboyList,
      final List<KomikuDetailModel> komikuList}) = _$StateImpl;

  @override
  List<AnoboyDetailModel> get anoboyList;
  @override
  List<KomikuDetailModel> get komikuList;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
