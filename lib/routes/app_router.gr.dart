// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    KomikListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KomikListScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    AnoboyListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnoboyListScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    KomikDetailRoute.name: (routeData) {
      final args = routeData.argsAs<KomikDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: KomikDetailScreen(
          key: args.key,
          param: args.param,
        ),
      );
    },
  };
}

/// generated route for
/// [KomikListScreen]
class KomikListRoute extends PageRouteInfo<void> {
  const KomikListRoute({List<PageRouteInfo>? children})
      : super(
          KomikListRoute.name,
          initialChildren: children,
        );

  static const String name = 'KomikListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnoboyListScreen]
class AnoboyListRoute extends PageRouteInfo<void> {
  const AnoboyListRoute({List<PageRouteInfo>? children})
      : super(
          AnoboyListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnoboyListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KomikDetailScreen]
class KomikDetailRoute extends PageRouteInfo<KomikDetailRouteArgs> {
  KomikDetailRoute({
    Key? key,
    required String param,
    List<PageRouteInfo>? children,
  }) : super(
          KomikDetailRoute.name,
          args: KomikDetailRouteArgs(
            key: key,
            param: param,
          ),
          initialChildren: children,
        );

  static const String name = 'KomikDetailRoute';

  static const PageInfo<KomikDetailRouteArgs> page =
      PageInfo<KomikDetailRouteArgs>(name);
}

class KomikDetailRouteArgs {
  const KomikDetailRouteArgs({
    this.key,
    required this.param,
  });

  final Key? key;

  final String param;

  @override
  String toString() {
    return 'KomikDetailRouteArgs{key: $key, param: $param}';
  }
}
