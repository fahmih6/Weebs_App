import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../global/endpoints.dart';
import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

part 'komiku_chapter_fetch_event.dart';
part 'komiku_chapter_fetch_state.dart';
part 'komiku_chapter_fetch_bloc.freezed.dart';

class KomikuChapterFetchBloc
    extends Bloc<KomikuChapterFetchEvent, KomikuChapterFetchState> {
  KomikuChapterFetchBloc() : super(const _Initial()) {
    /// Started
    on<_Started>(
      (event, emit) async {
        /// Emit loading state
        emit(const _Loading());

        /// Chapter Images
        final chapterImages =
            await getIt<KomikuRepository>().getKomikDetailChapterImages(
          url: "${Endpoints.komikuChapter}${event.param}",
        );

        /// Act according tot he result
        chapterImages.fold(
          (l) {
            emit(
              _Completed(
                errorMessage: l.message,
              ),
            );
          },
          (r) {
            /// Last chapter list
            final lastChapterList = [
              ...?state.mapOrNull(completed: (value) => value.chapterData)
            ];

            /// Add current chapter data to chapter list
            lastChapterList.add(
              KomikuChapterFetchModel(
                chapterParam: event.param,
                chapterUrls: r.data,
              ),
            );

            emit(
              _Completed(
                chapterData: lastChapterList,
              ),
            );
          },
        );
      },
      transformer: droppable(),
    );
  }
}
