import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/general/debouncer.dart';
import 'package:weebs_app/logic/komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
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

    /// Setup helper dependencies
    helperDependencies();

    /// Setup Bloc Dependencies
    blocDependencies();
  }

  /// Repository dependencies
  static void repositoryDependencies() {
    /// Anoboy Repository
    getIt.registerFactory<AnoboyRepository>(() => AnoboyRepository());

    /// Komiku Repository
    getIt.registerFactory<KomikuRepository>(() => KomikuRepository());
  }

  /// Bloc Dependencies
  static void blocDependencies() {
    /// Search Bloc
    getIt.registerLazySingleton(() => SearchBloc());

    /// Komik Detail Bloc
    getIt.registerLazySingleton(() => KomikuDetailFetchBloc());
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

  /// Helper Dependencies
  static void helperDependencies() {
    /// Debouncer
    getIt.registerLazySingleton(
      () => Debouncer(
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
