import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/routes/route_names.dart';

import '../../logic/splash_screen_bloc/splash_screen_bloc.dart';

class SplashScreenBlocWrapper extends StatelessWidget {
  final Widget child;
  const SplashScreenBlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    /// Bloc Listener
    return MultiBlocListener(
      listeners: [
        /// Splash screen bloc
        BlocListener<SplashScreenBloc, SplashScreenState>(
          listener: (context, state) {
            state.mapOrNull(
              /// If state is logged in, navigate to home screen.
              loggedIn: (value) => context.router.pushNamed(RouteNames.homeScreen),
            );
          },
        ),
      ],
      child: child,
    );
  }
}
