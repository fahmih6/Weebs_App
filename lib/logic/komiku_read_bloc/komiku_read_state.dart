part of 'komiku_read_bloc.dart';

@freezed
class KomikuReadState with _$KomikuReadState {
  const factory KomikuReadState.state({
    @Default([]) List<KomikuDetailModel> komikuList,
  }) = _State;
}
