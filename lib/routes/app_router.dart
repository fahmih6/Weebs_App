import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/home_screen/home_screen.dart';
import 'package:weebs_app/screens/splash_screen/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    /// Splash Screen
    AutoRoute(
      name: RouteNames.splashScreen,
      path: "/",
      initial: true,
      page: SplashScreen,
    ),

    /// Home Screen
    AutoRoute(
      name: RouteNames.homeScreen,
      path: RouteNames.homeScreen,
      page: HomeScreen,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
