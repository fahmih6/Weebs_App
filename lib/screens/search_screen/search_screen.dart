import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/helpers/general/debouncer.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/search_bloc/search_bloc.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';

import '../../routes/app_router.dart';

@RoutePage(name: RouteNames.searchScreen)
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  context
                      .read<SearchBloc>()
                      .add(SearchEvent.started(keyword: value));
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
                          return NotificationListener<ScrollNotification>(
                            onNotification: (notification) {
                              final currentPosition =
                                  notification.metrics.pixels;
                              final maxScroll =
                                  notification.metrics.maxScrollExtent;

                              /// If scroll position is on the bottom, the perform load more.
                              if (currentPosition >= (maxScroll - 300.h)) {
                                context
                                    .read<SearchBloc>()
                                    .add(const SearchEvent.loadMore());
                              }
                              return true;
                            },
                            child: ListView.builder(
                              itemCount: value.komikResult.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                final item = value.komikResult.data[index];
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 16.h),
                                  child: InkWell(
                                    onTap: () {
                                      context.pushRoute(
                                        KomikDetailRoute(
                                          param: item.param,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 120.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          /// Images
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: CachedNetworkImage(
                                              height: 120.h,
                                              width: 90.h,
                                              fit: BoxFit.cover,
                                              imageUrl: item.thumbnail,
                                              placeholder: (context, url) {
                                                return const ShimmerPlaceholderWidget();
                                              },
                                            ),
                                          ),

                                          /// Padding
                                          SizedBox(
                                            width: 8.h,
                                          ),

                                          /// Title and Description
                                          Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                /// Title
                                                Text(
                                                  item.title,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.sp,
                                                  ),
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),

                                                /// Latest Chapter
                                                Flexible(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      "Updated : ${item.latestChapter}",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
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
