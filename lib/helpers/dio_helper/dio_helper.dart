import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/failure/failure.dart';

class DioHelper {
  /// Default get request
  static Future<Either<Failure, Map<String, dynamic>>> defaultGetRequest(
      {required String url}) async {
    final dio = getIt<Dio>();

    try {
      /// Get the data
      final res = await dio.get(url);

      /// Return data
      return Right(res.data);
    } on DioError catch (error) {
      /// Return error message
      return Left(Failure(message: error.message));
    } catch (e) {
      /// Return error message
      return Left(Failure(message: e.toString()));
    }
  }

  /// Default post request
  static Future<Either<Failure, Map<String, dynamic>>> defaultPostRequest(
      {required String url, required Map<String, dynamic> body}) async {
    final dio = getIt<Dio>();

    try {
      /// Get the data
      final res = await dio.post(url, data: body);

      /// Return data
      return Right(res.data);
    } on DioError catch (error) {
      /// Return error message
      return Left(Failure(message: error.message));
    } catch (e) {
      /// Return error message
      return Left(Failure(message: e.toString()));
    }
  }
}
