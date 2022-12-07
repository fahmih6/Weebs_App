import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/dio_helper/dio_helper.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import 'package:weebs_app/model/failure/failure.dart';

/// Anoboy Repository
abstract class IAnoboyRepository {
  /// Get latest updated anime
  Future<Either<Failure, AnoboyListModel>> getLatestAnime({
    required bool useV2,
  });

  /// Get anime detail
  Future<Either<Failure, AnoboyDetailModel>> getAnimeDetail({
    required String param,
    required bool useV2,
  });
}

/// Anoboy Repository
class AnoboyRepository implements IAnoboyRepository {
  /// Dio
  final dio = getIt<Dio>();

  @override
  Future<Either<Failure, AnoboyDetailModel>> getAnimeDetail(
      {required String param, required bool useV2}) async {
    /// Get anime detail
    final res = await DioHelper.defaultGetRequest(
      url:
          useV2 ? "${Endpoints.anoboyV2}$param" : "${Endpoints.anoboyV1}$param",
    );

    /// Return the result
    return res.fold(
      (l) => Left(l),
      (r) {
        final data = AnoboyDetailModel.fromJson(r["data"]);
        return Right(data);
      },
    );
  }

  @override
  Future<Either<Failure, AnoboyListModel>> getLatestAnime(
      {required bool useV2}) async {
    /// Get latest anime data
    final res = await DioHelper.defaultGetRequest(
      url: useV2 ? Endpoints.anoboyV2 : Endpoints.anoboyV1,
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
}
