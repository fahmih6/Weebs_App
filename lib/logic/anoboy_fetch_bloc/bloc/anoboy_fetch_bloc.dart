import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';

part 'anoboy_fetch_event.dart';
part 'anoboy_fetch_state.dart';
part 'anoboy_fetch_bloc.freezed.dart';

class AnoboyFetchBloc extends Bloc<AnoboyFetchEvent, AnoboyFetchState> {
  AnoboyFetchBloc() : super(const _Initial()) {
    /// Started
    on<_Started>((event, emit) async {
      /// Current anime list
      final currentAnimeList =
          state.mapOrNull(completed: (value) => value.animeList) ??
              const AnoboyListModel();

      /// Emit Loading State
      emit(_Loading(animeList: currentAnimeList));

      /// Get fetch result
      final res = await getIt<AnoboyRepository>().getLatestAnime();

      /// Act According to result
      res.fold(
        (l) {
          emit(_Completed(animeList: currentAnimeList, errorMsg: l.message));
        },
        (r) {
          emit(_Completed(animeList: r));
        },
      );
    });

    /// On Load More
    on<_LoadMore>((event, emit) async {
      /// Current list
      final currentList =
          state.mapOrNull(completed: (value) => value.animeList) ??
              const AnoboyListModel();

      /// Emit Loading State
      emit(
        _Completed(
          animeList: currentList,
          isLoadMore: true,
        ),
      );

      /// Get fetch result
      final res = await getIt<AnoboyRepository>()
          .getNextAnimeListData(nextURL: event.nextLink);

      /// Act According to result
      res.fold((l) {
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
      }, (r) {
        /// Append the next anime list data
        List<AnoboyListItemModel> listData = [...currentList.data];
        listData.addAll(r.data);

        /// Create a new instance of Komiku List Model
        final newListData = r.copyWith(
          data: listData,
          nextPage: r.nextPage,
          prevPage: r.prevPage,
        );

        /// Emit completed
        emit(
          _Completed(animeList: newListData),
        );
      });
    });
  }
}
