import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import '../../model/komiku/komiku_list_model/komiku_list_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const _State()) {
    /// Started
    on<_Started>(
      (event, emit) async {
        /// Emit loading
        emit(state.copyWith(isLoading: true));

        /// Keyword
        final keyword = event.keyword;

        /// If user is on Komiku section.
        /// Search komik
        if (event.currentRouteName == RouteNames.komikListScreen) {
          /// Get komik
          final res =
              await getIt<KomikuRepository>().searchKomik(keyword: keyword);

          /// Fold
          res.fold(
            (l) => emit(
              state.copyWith(isLoading: false),
            ),
            (r) => emit(
              state.copyWith(komikResult: r, isLoading: false),
            ),
          );
        }

        /// If user is on Anoboy section.
        /// Search Anoboy Data
        else if (event.currentRouteName == RouteNames.anoboyListScreen) {
          /// Search Anoboy Data
          final res =
              await getIt<AnoboyRepository>().searchAnime(keyword: keyword);

          /// Fold
          res.fold(
            (l) => emit(state.copyWith(isLoading: false)),
            (r) => emit(
              state.copyWith(anoboyResult: r, isLoading: false),
            ),
          );
        }
      },
      transformer: restartable(),
    );

    /// Load More
    on<_LoadMore>(
      (event, emit) async {
        print("AYAYA");
        if (!state.isLoadMore && !state.isLoading) {
          /// Load More
          emit(state.copyWith(isLoadMore: true));

          /// Get the data
          if (state.komikResult.nextPage != null &&
              event.currentRouteName == RouteNames.komikListScreen) {
            /// Result
            final res = await getIt<KomikuRepository>().getNextKomikListData(
              nextURL: state.komikResult.nextPage ?? '',
            );

            res.fold(
              (l) => emit(state.copyWith(isLoadMore: false)),
              (r) {
                /// Komik Result
                final komikResult = state.komikResult.copyWith(
                  data: [...state.komikResult.data, ...r.data],
                  nextPage: r.nextPage,
                  prevPage: r.prevPage,
                );

                /// Emit komik result
                emit(
                  state.copyWith(
                    komikResult: komikResult,
                    isLoadMore: false,
                  ),
                );
              },
            );
          } else if (state.anoboyResult.nextPage != null &&
              event.currentRouteName == RouteNames.anoboyListScreen) {
            /// Result
            final res = await getIt<AnoboyRepository>().getNextAnimeListData(
              nextURL: state.anoboyResult.nextPage ?? '',
            );

            res.fold(
              (l) {
                emit(
                  state.copyWith(isLoadMore: false),
                );
              },
              (r) {
                /// Anoboy Result Result
                final anoboyResult = state.anoboyResult.copyWith(
                  data: [...state.anoboyResult.data, ...r.data],
                  nextPage: r.nextPage,
                  prevPage: r.prevPage,
                );

                /// Emit komik result
                emit(
                  state.copyWith(
                    anoboyResult: anoboyResult,
                    isLoadMore: false,
                  ),
                );
              },
            );
          }
        }
      },
      transformer: droppable(),
    );
  }
}
