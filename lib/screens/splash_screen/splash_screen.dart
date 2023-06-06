import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/logic/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/splash_screen/splash_screen_bloc_wrapper.dart';

@RoutePage(name: RouteNames.splashScreen)
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// Init state
  @override
  void initState() {
    super.initState();

    /// Perform auth after screen is shown.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      /// Perform auth with splash screen bloc
      context.read<SplashScreenBloc>().add(const SplashScreenEvent.started());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SplashScreenBlocWrapper(
          child: Container(
            alignment: Alignment.center,
            child: const Text("Weebs App"),
          ),
        ),
      ),
    );
  }
}
