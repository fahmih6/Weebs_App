import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
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
        emit(const _State(isLoading: true));

        /// Keyword
        final keyword = event.keyword;

        /// Get komik
        final res =
            await getIt<KomikuRepository>().searchKomik(keyword: keyword);

        /// Fold
        res.fold(
          (l) => debugPrint(l.message),
          (r) => emit(
            _State(komikResult: r),
          ),
        );
      },
      transformer: restartable(),
    );

    /// Load More
    on<_LoadMore>(
      (event, emit) async {
        /// Load More
        emit(state.copyWith(isLoadMore: true));

        /// Get the data
        if (state.komikResult.nextPage != null) {
          /// Result
          final res = await getIt<KomikuRepository>().getNextKomikListData(
            nextURL: state.komikResult.nextPage ?? '',
          );

          res.fold(
            (l) => Left(l.message),
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
        }
      },
      transformer: droppable(),
    );
  }
}
