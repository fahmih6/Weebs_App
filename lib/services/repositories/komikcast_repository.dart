import 'package:dartz/dartz.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/dio_helper/dio_helper.dart';
import 'package:weebs_app/model/komiku/komiku_chapter_image_list/komiku_chapter_image_list.dart';
import 'package:weebs_app/model/komiku/komiku_detail_model/komiku_detail_model.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../model/failure/failure.dart';

/// Komikcast Repository
class KomikcastRepository implements IKomikuRepository {
  @override
  Future<Either<Failure, KomikuDetailModel>> getKomikDetail({
    required String url,
  }) async {
    /// Get komik detail
    final res = await DioHelper.defaultGetRequest(url: url);

    /// Return the result
    return res.fold(
      (l) => Left(l),
      (r) => Right(KomikuDetailModel.fromJson(r['data'])),
    );
  }

  @override
  Future<Either<Failure, KomikuChapterImageListModel>>
  getKomikDetailChapterImages({required String url}) async {
    /// Get komik chapter image
    final res = await DioHelper.defaultGetRequest(url: url);

    /// Return the result
    return res.fold(
      (l) => Left(l),
      (r) => Right(KomikuChapterImageListModel.fromJson(r)),
    );
  }

  @override
  Future<Either<Failure, KomikuListModel>> getLatestKomik({
    String? genre,
    String? tag,
  }) async {
    /// Query Params
    Map<String, dynamic> queryParams = {};

    /// Fill in the query params
    queryParams['genre'] = genre;
    queryParams['tag'] = tag;

    /// Get latest updated komik
    final res = await DioHelper.defaultGetRequest(
      url: Endpoints.komikcast,
      queryParams: queryParams,
    );

    /// return the result
    return res.fold((l) => Left(l), (r) => Right(KomikuListModel.fromJson(r)));
  }

  @override
  Future<Either<Failure, KomikuListModel>> getNextKomikListData({
    required String nextURL,
  }) async {
    /// Get next komik list
    final res = await DioHelper.defaultGetRequest(url: nextURL);

    /// return the result
    return res.fold((l) => Left(l), (r) => Right(KomikuListModel.fromJson(r)));
  }

  @override
  Future<Either<Failure, KomikuListModel>> searchKomik({
    String? keyword,
  }) async {
    /// Search Komik
    final res = await DioHelper.defaultGetRequest(
      url: Endpoints.komikcast,
      queryParams: {"s": keyword},
    );

    /// Return the result
    return res.fold((l) => Left(l), (r) => Right(KomikuListModel.fromJson(r)));
  }
}
