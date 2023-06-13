import 'package:auto_route/auto_route.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/komik_list_screen/widgets/komik_list_screen_appbar.dart';
import 'package:weebs_app/screens/komik_list_screen/widgets/komik_list_screen_listview.dart';

import '../../widgets/loading_widget/loading_widget.dart';

@RoutePage(name: RouteNames.komikListScreen)
class KomikListScreen extends StatefulWidget {
  const KomikListScreen({super.key});

  @override
  State<KomikListScreen> createState() => _KomikListScreenState();
}

class _KomikListScreenState extends State<KomikListScreen> {
  @override
  void initState() {
    super.initState();

    /// Start the komik list fetch.
    context
        .read<KomikuListKomikFetchBloc>()
        .add(const KomikuListKomikFetchEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<KomikuListKomikFetchBloc, KomikuListKomikFetchState>(
        builder: (context, state) {
          return state.maybeMap(
            completed: (value) {
              /// If error occurred, then show error message
              if (value.errorMsg != null) {
                return InkWell(
                  onTap: () {
                    /// Start the komik list fetch.
                    context
                        .read<KomikuListKomikFetchBloc>()
                        .add(const KomikuListKomikFetchEvent.started());
                  },
                  child: Center(
                    child: Text(
                      "${value.errorMsg}",
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }

              /// Otherwise, show widget
              return CustomScrollView(
                primary: true,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  /// App bar
                  KomikListScreenAppBar(
                      komikuListData: value.recommendationList),

                  /// Margin
                  SliverToBoxAdapter(
                    child: SizedBox(height: 16.h),
                  ),

                  /// Recomendation
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: KomikListScreenListView(
                        title: "Recommendation",
                        komikuList: value.recommendationList,
                        tagOrGenre: "rekomendasi",
                      ),
                    ),
                  ),

                  /// Hot
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 8.h,
                        top: 24.h,
                      ),
                      child: KomikListScreenListView(
                        title: "Hot Manga",
                        komikuList: value.hotList,
                        tagOrGenre: "hot",
                      ),
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
          );
        },
      ),
    );
  }
}
