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
    AnoboyDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AnoboyDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnoboyDetailScreen(
          key: args.key,
          param: args.param,
        ),
      );
    },
    AnoboyListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnoboyListScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
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
    KomikListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KomikListScreen(),
      );
    },
    KomikReadRoute.name: (routeData) {
      final args = routeData.argsAs<KomikReadRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: KomikReadScreen(
          key: args.key,
          param: args.param,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AnoboyDetailScreen]
class AnoboyDetailRoute extends PageRouteInfo<AnoboyDetailRouteArgs> {
  AnoboyDetailRoute({
    Key? key,
    required String param,
    List<PageRouteInfo>? children,
  }) : super(
          AnoboyDetailRoute.name,
          args: AnoboyDetailRouteArgs(
            key: key,
            param: param,
          ),
          initialChildren: children,
        );

  static const String name = 'AnoboyDetailRoute';

  static const PageInfo<AnoboyDetailRouteArgs> page =
      PageInfo<AnoboyDetailRouteArgs>(name);
}

class AnoboyDetailRouteArgs {
  const AnoboyDetailRouteArgs({
    this.key,
    required this.param,
  });

  final Key? key;

  final String param;

  @override
  String toString() {
    return 'AnoboyDetailRouteArgs{key: $key, param: $param}';
  }
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
/// [KomikReadScreen]
class KomikReadRoute extends PageRouteInfo<KomikReadRouteArgs> {
  KomikReadRoute({
    Key? key,
    required String param,
    List<PageRouteInfo>? children,
  }) : super(
          KomikReadRoute.name,
          args: KomikReadRouteArgs(
            key: key,
            param: param,
          ),
          initialChildren: children,
        );

  static const String name = 'KomikReadRoute';

  static const PageInfo<KomikReadRouteArgs> page =
      PageInfo<KomikReadRouteArgs>(name);
}

class KomikReadRouteArgs {
  const KomikReadRouteArgs({
    this.key,
    required this.param,
  });

  final Key? key;

  final String param;

  @override
  String toString() {
    return 'KomikReadRouteArgs{key: $key, param: $param}';
  }
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
