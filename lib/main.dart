import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weebs_app/global/assets_constant.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/routes/app_router_observer.dart';

/// Scaffold messenger key
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  await dotenv.load(fileName: AssetsConstant.envFile);
  runApp(WeebsApp());
}

class WeebsApp extends StatelessWidget {
  WeebsApp({super.key});

  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weebs App',
      darkTheme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AppRouterObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
