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
abstract class _$$_AddedCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$_AddedCopyWith(_$_Added value, $Res Function(_$_Added) then) =
      __$$_AddedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$_AddedCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_Added>
    implements _$$_AddedCopyWith<$Res> {
  __$$_AddedCopyWithImpl(_$_Added _value, $Res Function(_$_Added) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$_Added(
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

class _$_Added implements _Added {
  const _$_Added({this.anoboyData, this.komikuData});

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
            other is _$_Added &&
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
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      __$$_AddedCopyWithImpl<_$_Added>(this, _$identity);

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
      final KomikuDetailModel? komikuData}) = _$_Added;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$_RemovedCopyWith(
          _$_Removed value, $Res Function(_$_Removed) then) =
      __$$_RemovedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$_RemovedCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_Removed>
    implements _$$_RemovedCopyWith<$Res> {
  __$$_RemovedCopyWithImpl(_$_Removed _value, $Res Function(_$_Removed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$_Removed(
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

class _$_Removed implements _Removed {
  const _$_Removed({this.anoboyData, this.komikuData});

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
            other is _$_Removed &&
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
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      __$$_RemovedCopyWithImpl<_$_Removed>(this, _$identity);

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
      final KomikuDetailModel? komikuData}) = _$_Removed;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditedCopyWith<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  factory _$$_EditedCopyWith(_$_Edited value, $Res Function(_$_Edited) then) =
      __$$_EditedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnoboyDetailModel? anoboyData, KomikuDetailModel? komikuData});

  @override
  $AnoboyDetailModelCopyWith<$Res>? get anoboyData;
  @override
  $KomikuDetailModelCopyWith<$Res>? get komikuData;
}

/// @nodoc
class __$$_EditedCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$_Edited>
    implements _$$_EditedCopyWith<$Res> {
  __$$_EditedCopyWithImpl(_$_Edited _value, $Res Function(_$_Edited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyData = freezed,
    Object? komikuData = freezed,
  }) {
    return _then(_$_Edited(
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

class _$_Edited implements _Edited {
  const _$_Edited({this.anoboyData, this.komikuData});

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
            other is _$_Edited &&
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
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
      __$$_EditedCopyWithImpl<_$_Edited>(this, _$identity);

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
      final KomikuDetailModel? komikuData}) = _$_Edited;

  @override
  AnoboyDetailModel? get anoboyData;
  @override
  KomikuDetailModel? get komikuData;
  @override
  @JsonKey(ignore: true)
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
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
abstract class _$$_StateCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AnoboyDetailModel> anoboyList, List<KomikuDetailModel> komikuList});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anoboyList = null,
    Object? komikuList = null,
  }) {
    return _then(_$_State(
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

class _$_State implements _State {
  const _$_State(
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
            other is _$_State &&
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
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

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
      final List<KomikuDetailModel> komikuList}) = _$_State;

  @override
  List<AnoboyDetailModel> get anoboyList;
  @override
  List<KomikuDetailModel> get komikuList;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
