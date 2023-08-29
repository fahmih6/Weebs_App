import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/routes/app_router.dart';

class KomikListScreenAppBar extends StatelessWidget {
  final KomikuListModel komikuListData;
  const KomikListScreenAppBar({super.key, required this.komikuListData});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      stretch: true,
      toolbarHeight: 200.h,
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        child: FlexibleSpaceBar(
          /// App bar image
          background: InkWell(
            onTap: () {
              context.pushRoute(
                KomikDetailRoute(
                  param: komikuListData.data.firstOrNull?.param ?? '',
                ),
              );
            },
            child: CachedNetworkImage(
              imageUrl: komikuListData.data.firstOrNull?.thumbnail ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),

          /// Set only bottom padding
          titlePadding: EdgeInsets.only(bottom: 16.h),

          /// App bar title
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: InkWell(
              onTap: () {
                context.pushRoute(
                  KomikDetailRoute(
                    param: komikuListData.data.firstOrNull?.param ?? '',
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Text(
                  komikuListData.data.first.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
