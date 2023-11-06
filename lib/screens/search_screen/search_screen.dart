import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/helpers/general/debouncer.dart';
import 'package:weebs_app/helpers/general/helper_functions.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/screens/search_screen/widgets/search_screen_anoboy_result.dart';
import 'package:weebs_app/screens/search_screen/widgets/search_screen_komik_result.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';

@RoutePage(name: RouteNames.searchScreen)
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Current Route
    final currentRoute = HelperFunction.getHomeChildRouteName(context: context);

    /// Widget
    return Scaffold(
      appBar: AppBar(title: const Text("Search")),
      body: Container(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            /// TextField
            CupertinoSearchTextField(
              style: TextStyle(
                color: Theme.of(context).textTheme.labelMedium?.color,
              ),
              onChanged: (value) {
                getIt<Debouncer>().run(() {
                  context.read<SearchBloc>().add(
                        SearchEvent.started(
                          keyword: value,
                          currentRouteName: currentRoute,
                        ),
                      );
                });
              },
            ),

            /// Padding
            Padding(
              padding: EdgeInsets.only(top: 24.h),
            ),

            /// Result
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: state.map(
                      state: (value) {
                        if (value.isLoading) {
                          return const Center(
                            child: LoadingWidget(),
                          );
                        } else {
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 250),
                            child: currentRoute == RouteNames.komikListScreen
                                ? SearchScreenKomikResult(
                                    komikResult: value.komikResult,
                                  )
                                : SearchScreenAnoboyResult(
                                    anoboyResult: value.anoboyResult,
                                  ),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
