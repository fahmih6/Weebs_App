import 'package:auto_route/auto_route.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/anoboy_list_screen/widgets/anoboy_list_screen_appbar.dart';
import 'package:weebs_app/screens/anoboy_list_screen/widgets/anoboy_list_screen_listview.dart';

import '../../logic/anoboy_fetch_bloc/bloc/anoboy_fetch_bloc.dart';
import '../../widgets/loading_widget/loading_widget.dart';

@RoutePage(name: RouteNames.anoboyListScreen)
class AnoboyListScreen extends StatefulWidget {
  const AnoboyListScreen({super.key});

  @override
  State<AnoboyListScreen> createState() => _AnoboyListScreenState();
}

class _AnoboyListScreenState extends State<AnoboyListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AnoboyFetchBloc>().add(const AnoboyFetchEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AnoboyFetchBloc, AnoboyFetchState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: state.maybeMap(
              completed: (value) {
                /// If error occurred, then show error message
                if (value.errorMsg != null) {
                  return InkWell(
                    onTap: () {
                      /// Start the komik list fetch.
                      context
                          .read<AnoboyFetchBloc>()
                          .add(const AnoboyFetchEvent.started());
                    },
                    child: Center(
                      child: Text(
                        "${value.errorMsg}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }

                /// Otherwise, show widget.
                return CustomScrollView(
                  primary: true,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    /// App Bar
                    AnoboyListScreenAppbar(animeList: value.animeList),

                    /// Margin
                    SliverToBoxAdapter(
                      child: SizedBox(height: 16.h),
                    ),

                    /// Anime List
                    SliverToBoxAdapter(
                      child: AnoboyListScreenListView(
                        title: "Latest Update",
                        animeList: value.animeList,
                      ),
                    ),

                    /// Margin
                    SliverToBoxAdapter(
                      child: SizedBox(height: FluidNavBar.nominalHeight + 32.h),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox(
                  child: Center(
                    child: LoadingWidget(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
