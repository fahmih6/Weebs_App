import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../helpers/get_it_helper/get_it_helper.dart';

part 'komiku_list_komik_fetch_event.dart';
part 'komiku_list_komik_fetch_state.dart';
part 'komiku_list_komik_fetch_bloc.freezed.dart';

class KomikuListKomikFetchBloc
    extends Bloc<KomikuListKomikFetchEvent, KomikuListKomikFetchState> {
  KomikuListKomikFetchBloc() : super(const _Initial()) {
    /// On Started
    on<_Started>((event, emit) async {
      /// Current recommendation list komik list
      final currentRecommendationList = state
              .mapOrNull(completed: (value) => value.recommendationList)
              ?.copyWith() ??
          const KomikuListModel();

      /// Current hot list
      final hotList = state
              .mapOrNull(
                completed: (value) => value.hotList,
              )
              ?.copyWith() ??
          const KomikuListModel();

      /// Emit Loading State
      emit(const _Loading());

      /// Get fetch result
      final res = await getIt<KomikuRepository>().getLatestKomik();

      /// Get hot result
      final hot = await getIt<KomikuRepository>().getLatestKomik(tag: 'hot');

      /// Act According to result
      res.fold(
        (l) {
          emit(_Completed(
            recommendationList: currentRecommendationList,
            hotList: hotList,
            errorMsg: l.message,
          ));
        },
        (r) {
          /// Emit hot list
          hot.fold(
            (hotL) {
              emit(
                _Completed(
                  recommendationList: r,
                  hotList: hotList,
                  errorMsg: hotL.message,
                ),
              );
            },
            (hotR) {
              emit(
                _Completed(
                  recommendationList: r,
                  hotList: hotR,
                  errorMsg: null,
                ),
              );
            },
          );
        },
      );
    });

    /// On Load More
    on<_LoadMore>((event, emit) async {
      /// Current recommendation list
      final currentRecommendationList =
          state.mapOrNull(completed: (value) => value.recommendationList) ??
              const KomikuListModel();

      /// Current hot list
      final currentHotList =
          state.mapOrNull(completed: (value) => value.hotList) ??
              const KomikuListModel();

      /// Emit Loading State
      emit(
        _Completed(
          hotList: currentHotList,
          recommendationList: currentRecommendationList,
          errorMsg: null,
          isLoadMore: true,
        ),
      );

      /// Get fetch result
      final res = await getIt<KomikuRepository>()
          .getNextKomikListData(nextURL: event.nextLink);

      /// Act According to result
      res.fold(
        (l) {
          state.mapOrNull(
            completed: (value) {
              emit(
                value.copyWith(
                  errorMsg: l.message,
                  isLoadMore: false,
                ),
              );
            },
          );
        },
        (r) {
          if (event.tag == 'hot') {
            /// Append the next komik list data
            List<KomikuListItemModel> hotListData = [...currentHotList.data];
            hotListData.addAll(r.data);

            /// Create a new instance of Komiku List Model
            final newHotListData = r.copyWith(
              data: hotListData,
              nextPage: r.nextPage,
              prevPage: r.prevPage,
            );

            /// Emit completed
            emit(
              _Completed(
                recommendationList: currentRecommendationList,
                hotList: newHotListData,
                errorMsg: null,
              ),
            );
          } else if (event.tag == 'rekomendasi') {
            /// Append the next komik list data
            List<KomikuListItemModel> recommendationList = [
              ...currentRecommendationList.data
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
                hotList: currentHotList,
                errorMsg: null,
              ),
            );
          }
        },
      );
    });
  }
}
