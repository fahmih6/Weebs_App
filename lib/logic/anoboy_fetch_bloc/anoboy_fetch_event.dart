part of 'anoboy_fetch_bloc.dart';

@freezed
class AnoboyFetchEvent with _$AnoboyFetchEvent {
  const factory AnoboyFetchEvent.started() = _Started;
  const factory AnoboyFetchEvent.loadMore({required String nextLink}) =
      _LoadMore;
}
