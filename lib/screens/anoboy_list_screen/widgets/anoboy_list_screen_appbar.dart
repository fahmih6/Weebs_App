import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';

import '../../../model/anoboy/anoboy_list_model/anoboy_list_model.dart';

class AnoboyListScreenAppbar extends StatelessWidget {
  final AnoboyListModel animeList;
  const AnoboyListScreenAppbar({super.key, required this.animeList});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(builder: (context, constraints) {
      // final scrolled = constraints.scrollOffset > 100.h;
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
                /// TODO : Add anoboy detail navigation.
              },
              child: CachedNetworkImage(
                imageUrl: animeList.data.firstOrNull?.thumbnail ?? '',
                fit: BoxFit.cover,
                placeholder: (context, url) {
                  return const ShimmerPlaceholderWidget();
                },
                errorWidget: (context, url, error) {
                  return Container(
                    color: Colors.black,
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
                  /// TODO : Add anoboy detail navigation.
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Text(
                    animeList.data.first.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
