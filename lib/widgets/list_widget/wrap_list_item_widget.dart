import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/shimmer/shimmer_placeholder_widget.dart';

class WrapListItemWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumbnailLink;
  final String title;
  final String subtitle;
  final double? containerWidth;
  final double? imageWidth;
  final double? imageHeight;
  final int? titleMaxLines;
  const WrapListItemWidget({
    super.key,
    this.onTap,
    required this.thumbnailLink,
    required this.title,
    required this.subtitle,
    this.containerWidth,
    this.imageWidth,
    this.imageHeight,
    this.titleMaxLines,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: SizedBox(
        width: containerWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Image
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                /// Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: thumbnailLink,
                    placeholder: (context, url) {
                      return const ShimmerPlaceholderWidget();
                    },
                    errorWidget: (context, url, error) {
                      return Container(
                        color: Colors.black,
                      );
                    },
                    fit: BoxFit.cover,
                    height: imageHeight ?? 190.h,
                    width: imageWidth ?? 190.h,
                  ),
                ),

                /// Title
                Tooltip(
                  message: title,
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
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: titleMaxLines ?? 5,
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
                  subtitle,
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
      ),
    );
  }
}
