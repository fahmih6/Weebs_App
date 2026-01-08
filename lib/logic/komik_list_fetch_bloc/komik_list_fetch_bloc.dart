import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import 'package:weebs_app/services/repositories/komikcast_repository.dart';

import '../../helpers/get_it_helper/get_it_helper.dart';

part 'komik_list_fetch_event.dart';
part 'komik_list_fetch_state.dart';
part 'komik_list_fetch_bloc.freezed.dart';

class KomikListFetchBloc
    extends Bloc<KomikListFetchEvent, KomikListFetchState> {
  KomikListFetchBloc() : super(const _Initial()) {
    /// On Started
    on<_Started>((event, emit) async {
      /// Current recommendation list komik list
      final currentRecommendationList =
          state
              .mapOrNull(completed: (value) => value.recommendationList)
              ?.copyWith() ??
          const KomikuListModel();

      /// Emit Loading State
      emit(const _Loading());

      /// Repository
      final repo = event.provider == MangaProvider.komiku
          ? getIt<KomikuRepository>()
          : getIt<KomikcastRepository>();

      /// Get fetch result
      final res = await repo.getLatestKomik();

      /// Act According to result
      res.fold(
        (l) {
          emit(
            _Completed(
              recommendationList: currentRecommendationList,
              errorMsg: l.message,
            ),
          );
        },
        (r) {
          emit(_Completed(recommendationList: r, errorMsg: null));
        },
      );
    });

    /// On Load More
    on<_LoadMore>((event, emit) async {
      /// Current recommendation list
      final currentRecommendationList =
          state.mapOrNull(completed: (value) => value.recommendationList) ??
          const KomikuListModel();

      /// Emit Loading State
      emit(
        _Completed(
          recommendationList: currentRecommendationList,
          errorMsg: null,
          isLoadMore: true,
        ),
      );

      /// Repository
      final repo = event.provider == MangaProvider.komiku
          ? getIt<KomikuRepository>()
          : getIt<KomikcastRepository>();

      /// Get fetch result
      final res = await repo.getNextKomikListData(nextURL: event.nextLink);

      /// Act According to result
      res.fold(
        (l) {
          state.mapOrNull(
            completed: (value) {
              emit(value.copyWith(errorMsg: l.message, isLoadMore: false));
            },
          );
        },
        (r) {
          if (event.tag == 'rekomendasi') {
            /// Append the next komik list data
            List<KomikuListItemModel> recommendationList = [
              ...currentRecommendationList.data,
            ];
            recommendationList.addAll(r.data);

            /// Create a new instance of Komiku List Model
            final newRecommendationList = r.copyWith(
              data: recommendationList,
              nextPage: r.nextPage,
              prevPage: r.prevPage,
            );

            /// Emit completed
            emit(
              _Completed(
                recommendationList: newRecommendationList,
                errorMsg: null,
              ),
            );
          }
        },
      );
    });
  }
}
