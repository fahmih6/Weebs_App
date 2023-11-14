import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/appbar_video_cubit/appbar_video_cubit.dart';
import 'package:weebs_app/routes/route_names.dart';

class AppRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('New route pushed: ${route.settings.name}');
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
    await anoboyAppbarVideoHandler(route);
  }

  /// Anoboy App Bar Video Handler.
  ///
  /// This function is used to stop video or play the video when moving between home page tabs.
  Future<void> anoboyAppbarVideoHandler(TabPageRoute route) async {
    /// Play the appbar video
    final AppbarVideoCubit appbarVideoCubit = getIt<AppbarVideoCubit>();

    /// If route is anoboy list screen, then check if the player should play or stop.
    if (route.name == RouteNames.anoboyListScreen) {
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
  }
}
