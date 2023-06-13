// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) started,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? started,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? started,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_Started(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.keyword});

  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchEvent.started(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) started,
    required TResult Function() loadMore,
  }) {
    return started(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? started,
    TResult? Function()? loadMore,
  }) {
    return started?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? started,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started({required final String keyword}) = _$_Started;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'SearchEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) started,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? started,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? started,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements SearchEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  KomikuListModel get komikResult => throw _privateConstructorUsedError;
  AnoboyListModel get anoboyResult => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)?
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
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadMore,
      KomikuListModel komikResult,
      AnoboyListModel anoboyResult});

  $KomikuListModelCopyWith<$Res> get komikResult;
  $AnoboyListModelCopyWith<$Res> get anoboyResult;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? komikResult = null,
    Object? anoboyResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      komikResult: null == komikResult
          ? _value.komikResult
          : komikResult // ignore: cast_nullable_to_non_nullable
              as KomikuListModel,
      anoboyResult: null == anoboyResult
          ? _value.anoboyResult
          : anoboyResult // ignore: cast_nullable_to_non_nullable
              as AnoboyListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KomikuListModelCopyWith<$Res> get komikResult {
    return $KomikuListModelCopyWith<$Res>(_value.komikResult, (value) {
      return _then(_value.copyWith(komikResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnoboyListModelCopyWith<$Res> get anoboyResult {
    return $AnoboyListModelCopyWith<$Res>(_value.anoboyResult, (value) {
      return _then(_value.copyWith(anoboyResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadMore,
      KomikuListModel komikResult,
      AnoboyListModel anoboyResult});

  @override
  $KomikuListModelCopyWith<$Res> get komikResult;
  @override
  $AnoboyListModelCopyWith<$Res> get anoboyResult;
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? komikResult = null,
    Object? anoboyResult = null,
  }) {
    return _then(_$_State(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      komikResult: null == komikResult
          ? _value.komikResult
          : komikResult // ignore: cast_nullable_to_non_nullable
              as KomikuListModel,
      anoboyResult: null == anoboyResult
          ? _value.anoboyResult
          : anoboyResult // ignore: cast_nullable_to_non_nullable
              as AnoboyListModel,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.isLoading = false,
      this.isLoadMore = false,
      this.komikResult = const KomikuListModel(),
      this.anoboyResult = const AnoboyListModel()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  @JsonKey()
  final KomikuListModel komikResult;
  @override
  @JsonKey()
  final AnoboyListModel anoboyResult;

  @override
  String toString() {
    return 'SearchState.state(isLoading: $isLoading, isLoadMore: $isLoadMore, komikResult: $komikResult, anoboyResult: $anoboyResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.komikResult, komikResult) ||
                other.komikResult == komikResult) &&
            (identical(other.anoboyResult, anoboyResult) ||
                other.anoboyResult == anoboyResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isLoadMore, komikResult, anoboyResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)
        state,
  }) {
    return state(isLoading, isLoadMore, komikResult, anoboyResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)?
        state,
  }) {
    return state?.call(isLoading, isLoadMore, komikResult, anoboyResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isLoadMore,
            KomikuListModel komikResult, AnoboyListModel anoboyResult)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(isLoading, isLoadMore, komikResult, anoboyResult);
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

abstract class _State implements SearchState {
  const factory _State(
      {final bool isLoading,
      final bool isLoadMore,
      final KomikuListModel komikResult,
      final AnoboyListModel anoboyResult}) = _$_State;

  @override
  bool get isLoading;
  @override
  bool get isLoadMore;
  @override
  KomikuListModel get komikResult;
  @override
  AnoboyListModel get anoboyResult;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
