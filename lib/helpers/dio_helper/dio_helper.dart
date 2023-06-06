import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/model/failure/failure.dart';

class DioHelper {
  /// Default get request
  static Future<Either<Failure, Map<String, dynamic>>> defaultGetRequest(
      {required String url, Map<String, dynamic>? queryParams}) async {
    final dio = getIt<Dio>();

    try {
      /// Get URL
      debugPrint("GET : $url");

      /// Get the data
      final res = await dio.get(url, queryParameters: queryParams);

      /// Return data
      return Right(res.data);
    } on DioError catch (error) {
      /// Return error message
      return Left(Failure(message: error.message ?? error.toString()));
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
      return Left(Failure(message: error.message ?? error.toString()));
    } catch (e) {
      /// Return error message
      return Left(Failure(message: e.toString()));
    }
  }
}
