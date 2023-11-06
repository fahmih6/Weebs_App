import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/routes/route_names.dart';

import '../../routes/app_router.dart';

/// Helper Function
class HelperFunction {
  /// Get current home child route name.
  static String getHomeChildRouteName({required BuildContext context}) {
    return context.router.innerRouterOf(HomeRoute.name)?.currentChild?.name ??
        RouteNames.komikListScreen;
  }
}
