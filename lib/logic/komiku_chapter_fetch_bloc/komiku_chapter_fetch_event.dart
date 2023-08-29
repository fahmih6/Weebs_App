part of 'komiku_chapter_fetch_bloc.dart';

@freezed
class KomikuChapterFetchEvent with _$KomikuChapterFetchEvent {
  const factory KomikuChapterFetchEvent.started({
    required String param,
  }) = _Started;
}
