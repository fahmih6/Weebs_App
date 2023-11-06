import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';

import '../../../helpers/general/helper_functions.dart';
import '../../../logic/search_bloc/search_bloc.dart';
import '../../../routes/app_router.dart';
import '../../../widgets/shimmer/shimmer_placeholder_widget.dart';

class SearchScreenKomikResult extends StatelessWidget {
  final KomikuListModel komikResult;
  const SearchScreenKomikResult({super.key, required this.komikResult});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final currentPosition = notification.metrics.pixels;
        final maxScroll = notification.metrics.maxScrollExtent;

        /// If scroll position is on the bottom, the perform load more.
        if (currentPosition >= (maxScroll - 300.h)) {
          /// Current Route
          final currentRoute = HelperFunction.getHomeChildRouteName(
            context: context,
          );

          context.read<SearchBloc>().add(
                SearchEvent.loadMore(
                  currentRouteName: currentRoute,
                ),
              );
        }
        return true;
      },
      child: ListView.builder(
        itemCount: komikResult.data.length,
        itemBuilder: (BuildContext context, int index) {
          final item = komikResult.data[index];
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Images
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Title
                          Text(
                            item.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),

                          /// Latest Chapter
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.h),
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
}
