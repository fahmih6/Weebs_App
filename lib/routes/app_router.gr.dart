// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AnoboyDetailScreen]
class AnoboyDetailRoute extends PageRouteInfo<AnoboyDetailRouteArgs> {
  AnoboyDetailRoute({
    Key? key,
    required String param,
    List<PageRouteInfo>? children,
  }) : super(
         AnoboyDetailRoute.name,
         args: AnoboyDetailRouteArgs(key: key, param: param),
         rawPathParams: {'param': param},
         initialChildren: children,
       );

  static const String name = 'AnoboyDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AnoboyDetailRouteArgs>(
        orElse:
            () => AnoboyDetailRouteArgs(param: pathParams.getString('param')),
      );
      return AnoboyDetailScreen(key: args.key, param: args.param);
    },
  );
}

class AnoboyDetailRouteArgs {
  const AnoboyDetailRouteArgs({this.key, required this.param});

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
    : super(AnoboyListRoute.name, initialChildren: children);

  static const String name = 'AnoboyListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnoboyListScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
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
         args: KomikDetailRouteArgs(key: key, param: param),
         rawPathParams: {'param': param},
         initialChildren: children,
       );

  static const String name = 'KomikDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<KomikDetailRouteArgs>(
        orElse:
            () => KomikDetailRouteArgs(param: pathParams.getString('param')),
      );
      return KomikDetailScreen(key: args.key, param: args.param);
    },
  );
}

class KomikDetailRouteArgs {
  const KomikDetailRouteArgs({this.key, required this.param});

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
    : super(KomikListRoute.name, initialChildren: children);

  static const String name = 'KomikListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const KomikListScreen();
    },
  );
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
         args: KomikReadRouteArgs(key: key, param: param),
         rawPathParams: {'param': param},
         initialChildren: children,
       );

  static const String name = 'KomikReadRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<KomikReadRouteArgs>(
        orElse: () => KomikReadRouteArgs(param: pathParams.getString('param')),
      );
      return KomikReadScreen(key: args.key, param: args.param);
    },
  );
}

class KomikReadRouteArgs {
  const KomikReadRouteArgs({this.key, required this.param});

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
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
