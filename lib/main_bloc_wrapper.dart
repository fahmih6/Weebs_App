import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/anoboy_detail_fetch_bloc/anoboy_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/anoboy_fetch_bloc/anoboy_fetch_bloc.dart';
import 'package:weebs_app/logic/appbar_video_cubit/appbar_video_cubit.dart';
import 'package:weebs_app/logic/favourites_bloc/favourites_bloc.dart';
import 'package:weebs_app/logic/komik_read_appbar_cubit/komik_read_appbar_cubit.dart';
import 'package:weebs_app/logic/komik_chapter_fetch_bloc/komik_chapter_fetch_bloc.dart';
import 'package:weebs_app/logic/komik_detail_fetch_bloc/komik_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/komik_list_fetch_bloc/komik_list_fetch_bloc.dart';
import 'package:weebs_app/logic/komik_read_bloc/komik_read_bloc.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
import 'package:weebs_app/logic/settings_bloc/settings_bloc.dart';
import 'package:weebs_app/logic/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:weebs_app/logic/video_player_cubit/video_player_cubit.dart';

class MainBlocWrapper extends StatelessWidget {
  final Widget child;
  const MainBlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashScreenBloc()),
        BlocProvider(create: (context) => getIt<KomikListFetchBloc>()),
        BlocProvider(create: (context) => getIt<AnoboyFetchBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<KomikDetailFetchBloc>()),
        BlocProvider(create: (context) => getIt<FavouritesBloc>()),
        BlocProvider(create: (context) => getIt<KomikChapterFetchBloc>()),
        BlocProvider(create: (context) => getIt<KomikReadBloc>()),
        BlocProvider(create: (context) => getIt<AnoboyDetailFetchBloc>()),

        /// Cubits
        BlocProvider(create: (context) => getIt<KomikReadAppbarCubit>()),
        BlocProvider(create: (context) => getIt<VideoPlayerCubit>()),
        BlocProvider(create: (context) => getIt<AppbarVideoCubit>()),
        BlocProvider(create: (context) => getIt<SettingsBloc>()),
      ],
      child: child,
    );
  }
}
