import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

part 'komiku_detail_fetch_event.dart';
part 'komiku_detail_fetch_state.dart';
part 'komiku_detail_fetch_bloc.freezed.dart';

class KomikuDetailFetchBloc
    extends Bloc<KomikuDetailFetchEvent, KomikuDetailFetchState> {
  KomikuDetailFetchBloc() : super(const _Initial()) {
    /// Started
    on<_Started>((event, emit) async {
      emit(const _Loading());

      /// Get komik data
      final res = await getIt<KomikuRepository>().getKomikDetail(
        url: "${Endpoints.komiku}/${event.param}",
      );

      /// Return
      res.fold(
        (l) => emit(
          _Completed(
            komikuDetailModel: const KomikuDetailModel(),
            errorMessage: l.message,
          ),
        ),
        (r) => emit(
          _Completed(komikuDetailModel: r),
        ),
      );
    });
  }
}
