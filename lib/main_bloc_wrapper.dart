import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/anoboy_fetch_bloc/bloc/anoboy_fetch_bloc.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
import 'package:weebs_app/logic/splash_screen_bloc/splash_screen_bloc.dart';

class MainBlocWrapper extends StatelessWidget {
  final Widget child;
  const MainBlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashScreenBloc(),
        ),
        BlocProvider(
          create: (context) => KomikuListKomikFetchBloc(),
        ),
        BlocProvider(
          create: (context) => AnoboyFetchBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
      ],
      child: child,
    );
  }
}
