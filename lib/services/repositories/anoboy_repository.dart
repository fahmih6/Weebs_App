import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/dio_helper/dio_helper.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import 'package:weebs_app/model/failure/failure.dart';
import 'package:weebs_app/services/repositories/blogger_repository.dart';

/// Anoboy Repository
abstract class IAnoboyRepository {
  /// Get latest updated anime
  Future<Either<Failure, AnoboyListModel>> getLatestAnime();

  /// Get anime detail
  Future<Either<Failure, AnoboyDetailModel>> getAnimeDetail({
    required String param,
  });

  /// Get next anime list
  Future<Either<Failure, AnoboyListModel>> getNextAnimeListData({
    required String nextURL,
  });

  /// Search Anime List
  Future<Either<Failure, AnoboyListModel>> searchAnime({
    required String keyword,
  });
}

/// Anoboy Repository
class AnoboyRepository implements IAnoboyRepository {
  /// Dio
  final dio = getIt<Dio>();

  /// Blogger Repository
  final BloggerRepository bloggerRepository = getIt<BloggerRepository>();

  @override
  Future<Either<Failure, AnoboyDetailModel>> getAnimeDetail(
      {required String param}) async {
    /// Get anime detail
    final res = await DioHelper.defaultGetRequest(
      url: "${Endpoints.anoboy}$param",
    );

    /// Return the result
    return await res.fold(
      (l) => Left(l),
      (r) async {
        final data = AnoboyDetailModel.fromJson(r["data"]);

        /// Get the direct links
        final directLinks = data.videoEmbedLinks.every(
          (element) => element.link.contains('blog'),
        )
            ? await Future.wait(
                [
                  ...data.videoEmbedLinks.map(
                    (e) => bloggerRepository.getVideoDirectLink(
                      url: e.link,
                      resolution: e.resolution,
                    ),
                  ),
                ],
              )
            : <Either<Failure, AnoboyLinksItemModel>>[];

        /// Map the direct links
        final directLinkList = directLinks.isNotEmpty
            ? directLinks
                .map(
                  (e) => e.fold(
                    (l) => const AnoboyLinksItemModel(),
                    (r) => r,
                  ),
                )
                .toList()
            : <AnoboyLinksItemModel>[];

        return Right(
          data.copyWith(
            videoDirectLinks: directLinkList.isNotEmpty
                ? directLinkList
                : data.videoDirectLinks,
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, AnoboyListModel>> getLatestAnime() async {
    /// Get latest anime data
    final res = await DioHelper.defaultGetRequest(
      url: Endpoints.anoboy,
    );

    /// Return the result
    return res.fold(
      (l) => Left(l),
      (r) {
        final data = AnoboyListModel.fromJson(r);
        return Right(data);
      },
    );
  }

  @override
  Future<Either<Failure, AnoboyListModel>> getNextAnimeListData(
      {required String nextURL}) async {
    /// Get next komik list
    final res = await DioHelper.defaultGetRequest(url: nextURL);

    try {
      /// return the result
      return res.fold(
        (l) => Left(l),
        (r) => Right(AnoboyListModel.fromJson(r)),
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AnoboyListModel>> searchAnime(
      {required String keyword}) async {
    /// Get next komik list
    final res = await DioHelper.defaultGetRequest(
      url: Endpoints.anoboy,
      queryParams: {"s": keyword},
    );

    /// return the result
    return res.fold(
      (l) => Left(l),
      (r) => Right(AnoboyListModel.fromJson(r)),
    );
  }
}
