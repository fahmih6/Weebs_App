import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../helpers/get_it_helper/get_it_helper.dart';

part 'komiku_list_komik_fetch_event.dart';
part 'komiku_list_komik_fetch_state.dart';
part 'komiku_list_komik_fetch_bloc.freezed.dart';

class KomikuListKomikFetchBloc extends Bloc<KomikuListKomikFetchEvent, KomikuListKomikFetchState> {
  KomikuListKomikFetchBloc() : super(const _Initial()) {
    /// On Started
    on<_Started>((event, emit) async {
      /// Current komik list
      final currentKomikList = state.mapOrNull(completed: (value) => value.komikuList) ?? const KomikuListModel();

      /// Emit Loading State
      emit(const _Loading());

      /// Get fetch result
      final res = await getIt<KomikuRepository>().getLatestKomik();

      /// Act According to result
      res.fold(
        (l) {
          emit(_Completed(komikuList: currentKomikList, errorMsg: l.message));
        },
        (r) {
          emit(_Completed(komikuList: r, errorMsg: null));
        },
      );
    });

    /// On Load More
    on<_LoadMore>((event, emit) async {
      /// Current komik list
      final currentKomikList = state.mapOrNull(completed: (value) => value.komikuList) ?? const KomikuListModel();

      /// Emit Loading State
      emit(const _Loading());

      /// Get fetch result
      final res = await getIt<KomikuRepository>().getNextKomikListData(nextURL: event.nextLink);

      /// Act According to result
      res.fold(
        (l) {
          emit(_Completed(komikuList: currentKomikList, errorMsg: l.message));
        },
        (r) {
          /// Append the next komik list data
          List<KomikuListItemModel> tempList = [...currentKomikList.data];
          tempList.addAll(r.data);

          /// Create a new instance of Komiku List Model
          final newKomikList = r.copyWith(data: tempList, nextPage: r.nextPage, prevPage: r.prevPage);

          /// Emit completed
          emit(_Completed(komikuList: newKomikList, errorMsg: null));
        },
      );
    });
  }
}
