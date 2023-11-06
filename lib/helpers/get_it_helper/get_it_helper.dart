import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/helpers/general/debouncer.dart';
import 'package:weebs_app/logic/anoboy_fetch_bloc/bloc/anoboy_fetch_bloc.dart';
import 'package:weebs_app/logic/favourites_bloc/favourites_bloc.dart';
import 'package:weebs_app/logic/komik_read_appbar_cubit/komik_read_appbar_cubit.dart';
import 'package:weebs_app/logic/komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
import 'package:weebs_app/logic/video_player_cubit/video_player_cubit.dart';
import 'package:weebs_app/services/repositories/anoboy_repository.dart';
import 'package:weebs_app/services/repositories/blogger_repository.dart';
import 'package:weebs_app/services/repositories/komiku_repository.dart';

import '../../logic/anoboy_detail_fetch_bloc/anoboy_detail_fetch_bloc.dart';
import '../../logic/komiku_chapter_fetch_bloc/komiku_chapter_fetch_bloc.dart';
import '../../logic/komiku_read_bloc/komiku_read_bloc.dart';

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

    /// Setup Cubit Dependencies
    cubitDependencies();
  }

  /// Repository dependencies
  static void repositoryDependencies() {
    /// Anoboy Repository
    getIt.registerFactory<AnoboyRepository>(() => AnoboyRepository());

    /// Komiku Repository
    getIt.registerFactory<KomikuRepository>(() => KomikuRepository());

    /// Blogger Repository
    getIt.registerFactory<BloggerRepository>(() => BloggerRepository());
  }

  /// Bloc Dependencies
  static void blocDependencies() {
    /// Search Bloc
    getIt.registerLazySingleton(() => SearchBloc());

    /// Komiku List Komik Fetch Bloc
    getIt.registerLazySingleton(() => KomikuListKomikFetchBloc());

    /// Komik Detail Bloc
    getIt.registerLazySingleton(() => KomikuDetailFetchBloc());

    /// Favourites Bloc
    getIt.registerLazySingleton(() => FavouritesBloc());

    /// Komik Chapter Bloc
    getIt.registerLazySingleton(() => KomikuChapterFetchBloc());

    /// Komik Read Bloc
    getIt.registerLazySingleton(() => KomikuReadBloc());

    /// Anoboy Fetch Bloc
    getIt.registerLazySingleton(() => AnoboyFetchBloc());

    /// Anoboy Detail Fetch Bloc
    getIt.registerLazySingleton(() => AnoboyDetailFetchBloc());
  }

  /// Cubit Dependencies
  static void cubitDependencies() {
    /// Komik Read App Bar Cubit
    getIt.registerLazySingleton(() => KomikReadAppbarCubit());

    /// Video Player Cubit
    getIt.registerLazySingleton(() => VideoPlayerCubit());
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
        retries: 3, // Retry count (optional)
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
