import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/appbar_video_cubit/appbar_video_cubit.dart';
import 'package:weebs_app/routes/route_names.dart';

class AppRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) async {
    debugPrint('New route pushed: ${route.settings.name}');

    /// Pause video when screen is pushed.
    await anoboyAppbarVideoHandler(route: route);
  }

  @override
  void didPop(Route route, Route? previousRoute) async {
    debugPrint('Route popped: ${route.settings.name}');

    /// Play video when screen is back to home.
    await anoboyAppbarVideoHandler(route: previousRoute);

    /// Did pop
    super.didPop(route, previousRoute);
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) async {
    debugPrint('Tab route re-visited: ${route.name}');

    /// Anoboy App bar video handler
    await anoboyAppbarVideoHandler(tabRoute: route);
  }

  /// Anoboy App Bar Video Handler.
  ///
  /// This function is used to stop video or play the video when moving between home page tabs.
  Future<void> anoboyAppbarVideoHandler({
    TabPageRoute? tabRoute,
    Route? route,
  }) async {
    /// Play the appbar video
    final AppbarVideoCubit appbarVideoCubit = getIt<AppbarVideoCubit>();

    /// If route is anoboy list screen, then check if the player should play or stop.
    if (tabRoute?.name == RouteNames.anoboyListScreen &&
        appbarVideoCubit.state.isVisible) {
      if (!appbarVideoCubit.state.shouldStop) {
        /// Play the video
        await appbarVideoCubit.videoPlayerController?.play();
      }
    } else {
      /// Pause the video
      !appbarVideoCubit.state.shouldStop
          ? await appbarVideoCubit.videoPlayerController?.pause()
          : null;
    }

    /// Play if route is back to home.
    if (route != null &&
        route.settings.name == RouteNames.homeScreen &&
        appbarVideoCubit.state.isVisible) {
      !appbarVideoCubit.state.shouldStop
          ? await appbarVideoCubit.videoPlayerController?.play()
          : null;
    } else if (route != null && route.settings.name != RouteNames.homeScreen) {
      /// Pause the video
      !appbarVideoCubit.state.shouldStop
          ? await appbarVideoCubit.videoPlayerController?.pause()
          : null;
    }
  }
}
