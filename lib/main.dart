import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weebs_app/global/design_size.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/helpers/http_overrides/custom_http_overrides.dart';
import 'package:weebs_app/main_bloc_wrapper.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/routes/app_router_observer.dart';

/// Scaffold messenger key
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  /// Ensure initialized
  WidgetsFlutterBinding.ensureInitialized();

  /// Set Custom HTTP Overrides
  HttpOverrides.global = CustomHttpOverrides();

  /// Setup the dependencies
  await GetItHelper.setupDependencies();

  /// Hydrated Bloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationSupportDirectory(),
  );

  /// Run the app
  runApp(WeebsApp());
}

class WeebsApp extends StatelessWidget {
  WeebsApp({super.key});

  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainBlocWrapper(
      child: SafeArea(
        child: ScreenUtilInit(
          designSize: MediaQuery.of(context).orientation == Orientation.portrait
              ? DesignSize.designSize
              : DesignSize.landscapeDesignSize,
          ensureScreenSize: true,
          builder: (context, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Weebs App 2',
            theme: ThemeData.dark(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            routerDelegate: _appRouter.delegate(
              navigatorObservers: () => [AppRouterObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            scaffoldMessengerKey: scaffoldMessengerKey,
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.trackpad,
                PointerDeviceKind.unknown,
              },
              scrollbars: false,
            ),
          ),
        ),
      ),
    );
  }
}
