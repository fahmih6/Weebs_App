import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

/// Get It
final getIt = GetIt.instance;

/// Get It Helper
class GetItHelper {
  /// Setup Dependencies
  static Future<void> setupDependencies() async {
    /// Setup dio dependency
    dioDependency();

    /// Setup repository dependencies
    repositoryDependencies();
  }

  /// Repository dependencies
  static void repositoryDependencies() {
    /// Anoboy Repository
    getIt.registerFactory<AnoboyRepository>(() => AnoboyRepository());

    /// Komiku Repository
    getIt.registerFactory<KomikuRepository>(() => KomikuRepository());
  }

  /// Dio Dependency
  static void dioDependency() {
    /// Setup DIO Dependency
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        connectTimeout: const Duration(milliseconds: 10000),
        sendTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
      ),
    );

    // Add the interceptor
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: debugPrint,
        retries: 100, // Retry count (optional)
      ),
    );

    /// Register dio
    getIt.registerSingleton<Dio>(dio);
  }
}
