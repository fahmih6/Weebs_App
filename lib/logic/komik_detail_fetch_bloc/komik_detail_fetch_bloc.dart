import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import 'package:weebs_app/services/repositories/komikcast_repository.dart';
import 'package:weebs_app/services/repositories/voratoon_repository.dart';

import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

part 'komik_detail_fetch_event.dart';
part 'komik_detail_fetch_state.dart';
part 'komik_detail_fetch_bloc.freezed.dart';

class KomikDetailFetchBloc
    extends Bloc<KomikDetailFetchEvent, KomikDetailFetchState> {
  KomikDetailFetchBloc() : super(const _Initial()) {
    /// Started
    on<_Started>((event, emit) async {
      emit(const _Loading());

      /// Repository
      final repo = _getRepository(event.provider);

      /// Endpoint
      final endpoint = _getEndpoint(event.provider);

      /// Get komik data
      final res = await repo.getKomikDetail(url: "$endpoint${event.param}");

      /// Return
      res.fold(
        (l) => emit(
          _Completed(
            komikuDetailModel: const KomikuDetailModel(),
            errorMessage: l.message,
          ),
        ),
        (r) =>
            emit(_Completed(komikuDetailModel: r.copyWith(param: event.param))),
      );
    });
  }

  /// Get repository based on provider
  IKomikuRepository _getRepository(MangaProvider provider) {
    switch (provider) {
      case MangaProvider.komiku:
        return getIt<KomikuRepository>();
      case MangaProvider.komikcast:
        return getIt<KomikcastRepository>();
      case MangaProvider.voratoon:
        return getIt<VoratoonRepository>();
    }
  }

  /// Get endpoint based on provider
  String _getEndpoint(MangaProvider provider) {
    switch (provider) {
      case MangaProvider.komiku:
        return Endpoints.komiku;
      case MangaProvider.komikcast:
        return Endpoints.komikcast;
      case MangaProvider.voratoon:
        return Endpoints.voratoon;
    }
  }
}
