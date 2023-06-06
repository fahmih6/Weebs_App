import 'package:auto_route/auto_route.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/screens_export.dart';
import 'package:weebs_app/screens/search_screen/search_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// Splash Screen
        AutoRoute(
          path: "/",
          initial: true,
          page: SplashRoute.page,
        ),

        /// Home Screen
        AutoRoute(
          path: "/${RouteNames.homeScreen}",
          page: HomeRoute.page,
          children: [
            /// Komik List Screen
            AutoRoute(
              path: RouteNames.komikListScreen,
              page: KomikListRoute.page,
            ),

            /// Anoboy List Screen
            AutoRoute(
              path: RouteNames.anoboyListScreen,
              page: AnoboyListRoute.page,
            ),
          ],
        ),

        /// Search Screen
        AutoRoute(
          path: "/${RouteNames.searchScreen}",
          page: SearchRoute.page,
        )
      ];
}
