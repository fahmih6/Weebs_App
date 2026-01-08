part of 'komik_read_bloc.dart';

@freezed
sealed class KomikReadState with _$KomikReadState {
  const factory KomikReadState.state({
    @Default([]) List<KomikuDetailModel> komikuList,
  }) = _State;
}
