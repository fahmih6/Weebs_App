part of 'komik_read_appbar_cubit.dart';

@freezed
class KomikReadAppbarState with _$KomikReadAppbarState {
  const factory KomikReadAppbarState.state({
    @Default(true) bool shouldShow,
    @Default('-') String title,
  }) = _State;
}
