import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';

import '../../../model/komiku/komiku_list_model/komiku_list_model.dart';

class KomikListScreenListView extends StatelessWidget {
  final String title;
  final KomikuListModel komikuList;
  final String tagOrGenre;
  const KomikListScreenListView({
    super.key,
    required this.komikuList,
    this.title = "Recommendation",
    this.tagOrGenre = "rekomendasi",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),

        /// Content
        Flexible(
          child: Align(
            alignment: Alignment.topCenter,
            child: Wrap(
              runSpacing: 8.h,
              spacing: 8.h,
              children: [
                ...komikuList.data
                    .map(
                      (item) => SizedBox(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                      ),
                    )
                    .toList(),

                /// Selengkapnya
                Visibility(
                  visible: komikuList.nextPage != null,
                  child: SizedBox(
                    height: 213.h,
                    width: 120.h,
                    child: ElevatedButton(
                      onPressed: () {
                        /// Komiku bloc
                        final komikuBloc =
                            context.read<KomikuListKomikFetchBloc>();

                        /// Only perform is load more
                        komikuBloc.state.mapOrNull(
                          completed: (value) {
                            if (!value.isLoadMore) {
                              komikuBloc.add(
                                KomikuListKomikFetchEvent.loadMore(
                                  tag: tagOrGenre,
                                  nextLink: komikuList.nextPage ?? '',
                                ),
                              );
                            }
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: context
                          .watch<KomikuListKomikFetchBloc>()
                          .state
                          .mapOrNull(
                        completed: (value) {
                          if (value.isLoadMore) {
                            return Center(
                              child: SizedBox(
                                height: 80.h,
                                width: 80.h,
                                child: LoadingWidget(),
                              ),
                            );
                          } else {
                            return Text(
                              "Load More",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
