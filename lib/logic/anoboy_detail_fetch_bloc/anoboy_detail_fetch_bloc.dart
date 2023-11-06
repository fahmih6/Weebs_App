import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';

import '../../model/failure/failure.dart';

part 'anoboy_detail_fetch_event.dart';
part 'anoboy_detail_fetch_state.dart';
part 'anoboy_detail_fetch_bloc.freezed.dart';

class AnoboyDetailFetchBloc
    extends Bloc<AnoboyDetailFetchEvent, AnoboyDetailFetchState> {
  AnoboyDetailFetchBloc() : super(const _Initial()) {
    /// Start Fetch
    on<_Started>((event, emit) async {
      /// Emit Loading State
      emit(const AnoboyDetailFetchState.loading());

      /// Start fetching
      final res =
          await getIt<AnoboyRepository>().getAnimeDetail(param: event.param);

      /// Act according to the result
      await res.fold(
        (l) {
          emit(
            AnoboyDetailFetchState.completed(
              anoboyDetailModel: const AnoboyDetailModel(),
              errorMessage: l.message,
            ),
          );
        },
        (r) async {
          /// Create Futures.
          final List<Future<Either<Failure, AnoboyDetailModel>>>
              relatedVideoFutures = [];

          /// Loop through episode navigations
          for (var i = 0; i < r.episodeNavigations.length; i++) {
            /// Link Item
            final item = r.episodeNavigations[i];

            /// Add The Future
            relatedVideoFutures.add(
              getIt<AnoboyRepository>().getAnimeDetail(
                param: item.navLink.split("/").last,
              ),
            );
          }

          /// Perform the futures
          final res = await Future.wait(relatedVideoFutures);

          /// Related Videos
          final relatedVideos = res
              .map(
                (e) => e.fold(
                  (l) => const AnoboyDetailModel(),
                  (r) => r,
                ),
              )
              .toList();

          emit(
            AnoboyDetailFetchState.completed(
              anoboyDetailModel: r,
              relatedVideos: relatedVideos,
            ),
          );
        },
      );
    });
  }
}
