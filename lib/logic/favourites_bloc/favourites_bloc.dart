import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';
import 'package:weebs_app/services/repositories/komikcast_repository.dart';

import '../../global/endpoints.dart';
import '../../model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends HydratedBloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(const _State()) {
    /// Init get new data
    getNewData();

    /// Add to Favourites
    on<_Added>((event, emit) {
      /// Reinitialize
      final anoboyData = event.anoboyData?.copyWith();
      final komikuData = event.komikuData?.copyWith();
      final provider = event.provider;

      /// State list
      final anoboyList = [...state.anoboyList];
      final komikuList = [...state.komikuList];
      final komikcastList = [...state.komikcastList];

      /// Add to the state
      if (anoboyData != null) {
        /// TODO : Add Anoboy Favourites Funtion
      } else if (komikuData != null) {
        if (provider == MangaProvider.komikcast) {
          /// Check if komikcast list contains the added komik data
          final isExist =
              komikcastList.firstWhereOrNull(
                (element) => element.param == komikuData.param,
              ) !=
              null;

          /// If doesn't exists, add the data
          if (!isExist) {
            komikcastList.add(komikuData);
          }
        } else {
          /// Check if komiku list contains the added komik data
          final isExist =
              komikuList.firstWhereOrNull(
                (element) => element.param == komikuData.param,
              ) !=
              null;

          /// If doesn't exists, add the data
          if (!isExist) {
            komikuList.add(komikuData);
          }
        }
      }

      /// Emit the state
      emit(
        state.copyWith(
          anoboyList: anoboyList,
          komikuList: komikuList,
          komikcastList: komikcastList,
        ),
      );
    }, transformer: sequential());

    on<_Removed>((event, emit) {
      /// Reinitialize
      final anoboyData = event.anoboyData?.copyWith();
      final komikuData = event.komikuData?.copyWith();
      final provider = event.provider;

      /// State list
      final anoboyList = [...state.anoboyList];
      final komikuList = [...state.komikuList];
      final komikcastList = [...state.komikcastList];

      /// Add to the state
      if (anoboyData != null) {
        /// TODO : Add Anoboy Favourites Funtion
      } else if (komikuData != null) {
        if (provider == MangaProvider.komikcast) {
          /// Remove from list
          komikcastList.removeWhere(
            (element) => element.param == komikuData.param,
          );
        } else {
          /// Remove from list
          komikuList.removeWhere(
            (element) => element.param == komikuData.param,
          );
        }
      }

      /// Emit the state
      emit(
        state.copyWith(
          anoboyList: anoboyList,
          komikuList: komikuList,
          komikcastList: komikcastList,
        ),
      );
    });

    on<_Edited>((event, emit) {
      /// Reinitialize
      final anoboyData = event.anoboyData?.copyWith();
      final komikuData = event.komikuData?.copyWith();
      final provider = event.provider;

      /// State list
      final anoboyList = [...state.anoboyList];
      final komikuList = [...state.komikuList];
      final komikcastList = [...state.komikcastList];

      /// Add to the state
      if (anoboyData != null) {
        /// TODO : Add Anoboy Favourites Funtion
      } else if (komikuData != null) {
        if (provider == MangaProvider.komikcast) {
          /// Check if komikcast list contains the added komik data
          final index = komikcastList.indexWhere(
            (element) => element.param == komikuData.param,
          );

          /// If doesn't exists, add the data
          if (index >= 0) {
            komikcastList[index] = komikuData;
          }
        } else {
          /// Check if komiku list contains the added komik data
          final index = komikuList.indexWhere(
            (element) => element.param == komikuData.param,
          );

          /// If doesn't exists, add the data
          if (index >= 0) {
            komikuList[index] = komikuData;
          }
        }
      }

      /// Emit the state
      emit(
        state.copyWith(
          anoboyList: anoboyList,
          komikuList: komikuList,
          komikcastList: komikcastList,
        ),
      );
    }, transformer: sequential());
  }

  @override
  FavouritesState? fromJson(Map<String, dynamic> json) {
    /// Parse anoboy data
    final List<AnoboyDetailModel> anoboyList = json['anoboyList'] != null
        ? (json['anoboyList'] as List)
              .map((e) => AnoboyDetailModel.fromJson(e))
              .toList()
        : [];

    /// Parse komiku data
    final List<KomikuDetailModel> komikuList = json['komikuList'] != null
        ? (json['komikuList'] as List)
              .map((e) => KomikuDetailModel.fromJson(e))
              .toList()
        : [];

    /// Parse komikcast data
    final List<KomikuDetailModel> komikcastList = json['komikcastList'] != null
        ? (json['komikcastList'] as List)
              .map((e) => KomikuDetailModel.fromJson(e))
              .toList()
        : [];

    /// Return state
    return FavouritesState.state(
      anoboyList: anoboyList,
      komikuList: komikuList,
      komikcastList: komikcastList,
    );
  }

  @override
  Map<String, dynamic>? toJson(FavouritesState state) {
    /// Save to Map
    return {
      "anoboyList": state.anoboyList.map((e) => e.toJson()).toList(),
      "komikuList": state.komikuList.map((e) => e.toJson()).toList(),
      "komikcastList": state.komikcastList.map((e) => e.toJson()).toList(),
    };
  }

  /// Get new data
  void getNewData() async {
    /// Update Komiku
    for (var i = 0; i < state.komikuList.length; i++) {
      /// Param
      final param = state.komikuList[i].param;

      /// Only update if param is not empty
      if (param.isNotEmpty) {
        /// Komik Data
        final komikData = await getIt<KomikuRepository>().getKomikDetail(
          url: "${Endpoints.komiku}$param",
        );

        /// Edit the data from list
        komikData.fold(
          (l) => null,
          (r) => add(
            FavouritesEvent.edited(
              komikuData: r.copyWith(param: param),
              provider: MangaProvider.komiku,
            ),
          ),
        );
      }
    }

    /// Update Komikcast
    for (var i = 0; i < state.komikcastList.length; i++) {
      /// Param
      final param = state.komikcastList[i].param;

      /// Only update if param is not empty
      if (param.isNotEmpty) {
        /// Komik Data
        final komikData = await getIt<KomikcastRepository>().getKomikDetail(
          url: "${Endpoints.komikcast}$param",
        );

        /// Edit the data from list
        komikData.fold(
          (l) => null,
          (r) => add(
            FavouritesEvent.edited(
              komikuData: r.copyWith(param: param),
              provider: MangaProvider.komikcast,
            ),
          ),
        );
      }
    }
  }
}
