import 'package:dartz/dartz.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/dio_helper/dio_helper.dart';
import 'package:weebs_app/model/komiku/komiku_chapter_image_list/komiku_chapter_image_list.dart';
import 'package:weebs_app/model/komiku/komiku_detail_model/komiku_detail_model.dart';

import '../../model/failure/failure.dart';
import '../../model/komiku/komiku_list_model/komiku_list_model.dart';

/// Komiku Repository
abstract class IKomikuRepository {
  /// Get latest manga from komiku
  Future<Either<Failure, KomikuListModel>> getLatestKomik();

  /// Get manga detail
  Future<Either<Failure, KomikuDetailModel>> getKomikDetail({
    required String url,
  });

  /// Get chapter images
  Future<Either<Failure, KomikuChapterImageListModel>>
      getKomikDetailChapterImages({
    required String url,
  });
}

/// Komiku Repository
class KomikuRepository implements IKomikuRepository {
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
      getKomikDetailChapterImages({
    required String url,
  }) async {
    /// Get komik chapter image
    final res = await DioHelper.defaultGetRequest(url: url);

    /// Return the result
    return res.fold(
      (l) => Left(l),
      (r) => Right(KomikuChapterImageListModel.fromJson(r)),
    );
  }

  @override
  Future<Either<Failure, KomikuListModel>> getLatestKomik() async {
    /// Get latest updated komik
    final res = await DioHelper.defaultGetRequest(url: Endpoints.komiku);

    /// return the result
    return res.fold(
      (l) => Left(l),
      (r) => Right(KomikuListModel.fromJson(r)),
    );
  }
}
