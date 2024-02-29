import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';

import '../../model/failure/failure.dart';

abstract class BloggerRepositoryInterface {
  Future<Either<Failure, AnoboyLinksItemModel>> getVideoDirectLink({
    required String url,
    required String resolution,
  });
}

class BloggerRepository implements BloggerRepositoryInterface {
  /// Dio
  Dio dio = Dio();

  @override
  Future<Either<Failure, AnoboyLinksItemModel>> getVideoDirectLink({
    required String url,
    required String resolution,
  }) async {
    try {
      final res = await dio.get(
        url,
        options: Options(
          headers: {
            "Access-Control-Allow-Origin": "*",
            "User-Agent":
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
          },
        ),
      );

      final document = parse(res.data);

      final videoConfig = document.head?.children.last.text;

      final configJson = jsonDecode(
        videoConfig?.trim().replaceAll("var VIDEO_CONFIG = ", "") ?? "{}",
      );

      final List<dynamic> streamLinks = configJson?['streams'];

      final link = streamLinks.last['play_url'];

      return Right(
        AnoboyLinksItemModel(
          headers: res.requestOptions.headers,
          resolution: resolution,
          link: link,
        ),
      );
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? ''));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
