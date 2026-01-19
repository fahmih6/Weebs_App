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
    return res.fold((l) => Left(l), (r) {
      final data = r['data'];

      /// If data is list, take the first one
      if (data is List) {
        if (data.isEmpty) {
          return Right(const KomikuDetailModel());
        }
        final model = KomikuDetailModel.fromJson(data[0]);
        return Right(_cleanChapterReleaseDates(model));
      }

      final model = KomikuDetailModel.fromJson(data);
      return Right(_cleanChapterReleaseDates(model));
    });
  }

  /// Clean chapter release dates
  KomikuDetailModel _cleanChapterReleaseDates(KomikuDetailModel model) {
    return model.copyWith(
      chapters: model.chapters.map((e) {
        return e.copyWith(release: _formatReleaseDate(e.release));
      }).toList(),
    );
  }

  /// Format release date
  String _formatReleaseDate(String release) {
    if (release.isEmpty) return release;

    /// Look for ISO-8601 like timestamp: 2021-11-30T16:05:04+07:00
    final isoRegex = RegExp(r'\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}');
    final match = isoRegex.firstMatch(release);

    if (match != null) {
      final datePart = match.group(0)!.split('T').first; // "2021-11-30"
      final parts = datePart.split('-');
      if (parts.length == 3) {
        final months = [
          "Jan",
          "Feb",
          "Mar",
          "Apr",
          "May",
          "Jun",
          "Jul",
          "Aug",
          "Sep",
          "Oct",
          "Nov",
          "Dec",
        ];
        final year = parts[0];
        final month = int.tryParse(parts[1]);
        final day = int.tryParse(parts[2]);
        if (month != null && day != null && month >= 1 && month <= 12) {
          return "$day ${months[month - 1]} $year";
        }
      }
      return datePart;
    }

    /// If it contains multiple dates (usually separated by space or duplicated)
    final parts = release.split(RegExp(r'\s+'));

    if (parts.length > 3) {
      /// Try to find if there's a duplication pattern
      final mid = parts.length ~/ 2;
      final firstHalf = parts.sublist(0, mid).join(' ');
      final secondHalf = parts.sublist(mid).join(' ');

      if (secondHalf.contains(firstHalf)) {
        return firstHalf;
      }

      /// Fallback: if it's too long, it's likely messy.
      if (parts.length >= 3) {
        return "${parts[0]} ${parts[1]} ${parts[2]}".replaceAll(',', '');
      }
    }

    return release.isEmpty ? release : parts.first;
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
