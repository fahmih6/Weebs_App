import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';

import '../../../widgets/shimmer/shimmer_placeholder_widget.dart';

class KomikListScreenListItem extends StatelessWidget {
  final KomikuListItemModel item;
  const KomikListScreenListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Image
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: item.thumbnail,
                  placeholder: (context, url) {
                    return const ShimmerPlaceholderWidget();
                  },
                  fit: BoxFit.cover,
                  height: 180.h,
                  width: 120.h,
                ),
              ),

              /// Title
              Tooltip(
                message: item.title,
                textAlign: TextAlign.center,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [-1, 0.5],
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.9),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Title
                        Flexible(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// Divider
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: const Divider(
              color: Colors.white,
              height: 1,
            ),
          ),

          /// Chapter
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.latestChapter,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),

          /// Padding
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
