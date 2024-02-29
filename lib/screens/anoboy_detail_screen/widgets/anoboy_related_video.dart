import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';
import 'package:weebs_app/routes/app_router.dart';

import '../../../widgets/shimmer/shimmer_placeholder_widget.dart';

class AnoboyRelatedVideo extends StatelessWidget {
  final AnoboyDetailModel anoboyDetailModel;
  const AnoboyRelatedVideo({
    super.key,
    required this.anoboyDetailModel,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: anoboyDetailModel.episodeNavigations.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Related Videos
            const Text(
              "Related Videos",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// Content
            SizedBox(
              height: 250.h,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8),
                scrollDirection: Axis.horizontal,
                itemCount: anoboyDetailModel.episodeNavigations.length,
                itemBuilder: (context, index) {
                  final item = anoboyDetailModel.episodeNavigations[index];
                  return Container(
                    width: 200.w,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      radius: 8,
                      onTap: () {
                        context.router.popAndPush(
                          AnoboyDetailRoute(
                              param: item.navLink.split('/').last),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          /// Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: anoboyDetailModel.thumbnail,
                              placeholder: (context, url) {
                                return const ShimmerPlaceholderWidget();
                              },
                              errorWidget: (context, url, error) {
                                return Container(
                                  color: Colors.black,
                                );
                              },
                              fit: BoxFit.cover,
                              height: 250.h,
                            ),
                          ),

                          /// Title
                          SizedBox(
                            height: 50.h,
                            child: Tooltip(
                              message: item.navName,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      /// Title
                                      Flexible(
                                        child: Text(
                                          item.navName,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
