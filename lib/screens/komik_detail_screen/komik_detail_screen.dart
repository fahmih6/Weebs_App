import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';
import 'package:weebs_app/widgets/clipper/inverted_bottom_border.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';
import 'package:weebs_app/widgets/texts/readmore.dart';

import '../../routes/route_names.dart';

@RoutePage(name: RouteNames.komikDetailScreen)
class KomikDetailScreen extends StatefulWidget {
  final String param;
  const KomikDetailScreen({super.key, required this.param});

  @override
  State<KomikDetailScreen> createState() => _KomikDetailScreenState();
}

class _KomikDetailScreenState extends State<KomikDetailScreen> {
  /// Flip List
  bool _flipList = false;

  @override
  void initState() {
    super.initState();

    context
        .read<KomikuDetailFetchBloc>()
        .add(KomikuDetailFetchEvent.started(param: widget.param));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: BlocBuilder<KomikuDetailFetchBloc, KomikuDetailFetchState>(
          builder: (context, state) {
            return state.maybeMap(
              completed: (value) {
                if (value.errorMessage.isEmpty) {
                  return CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        pinned: true,
                        expandedHeight: 416.h,
                        collapsedHeight: 80.h,
                        scrolledUnderElevation: 0,
                        stretch: true,
                        flexibleSpace: ClipPath(
                          clipper: const InvertedBottomBorder(radius: 16),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.125,
                                image: CachedNetworkImageProvider(
                                  value.komikuDetailModel.thumbnail,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                /// Image
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 64.h),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            value.komikuDetailModel.thumbnail,
                                        width: 180.h,
                                        placeholder: (context, url) =>
                                            const ShimmerPlaceholderWidget(),
                                      ),
                                    ),
                                  ),
                                ),

                                /// Tambahkan ke Favorit
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 16.h, bottom: 29.h),
                                  child: SizedBox(
                                    width: 180.h,
                                    child: Tooltip(
                                      enableFeedback: true,
                                      message: value.komikuDetailModel.title,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Add to Favourite"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// Box
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Title
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.black, Colors.transparent],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                value.komikuDetailModel.title,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            /// Description
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.h,
                                left: 16.h,
                                right: 16.h,
                              ),
                              child: ReadMoreText(
                                "${value.komikuDetailModel.synopsis} ",
                                trimLines: 2,
                                trimMode: TrimMode.line,
                                moreStyle: TextStyle(
                                  color: Theme.of(context)
                                      .buttonTheme
                                      .colorScheme
                                      ?.primary,
                                ),
                                lessStyle: TextStyle(
                                  color: Theme.of(context)
                                      .buttonTheme
                                      .colorScheme
                                      ?.primary,
                                ),
                              ),
                            ),

                            /// Chapter
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.h,
                                left: 16.h,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chapters",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _flipList = !_flipList;
                                      });
                                    },
                                    icon: Transform.flip(
                                      flipX: _flipList,
                                      child: RotatedBox(
                                        quarterTurns: _flipList ? 2 : 0,
                                        child: const Icon(Icons.sort),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            /// List of chapters
                            Flexible(
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.h,
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                reverse: _flipList,
                                itemCount:
                                    value.komikuDetailModel.chapters.length,
                                itemBuilder: (context, index) {
                                  final item =
                                      value.komikuDetailModel.chapters[index];
                                  return ListTile(
                                    title: Text(item.chapter),
                                    trailing: Text(item.release),
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    onTap: () {},
                                    tileColor: Colors.transparent,
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return InkWell(
                    onTap: () {
                      /// Start the komik list fetch.
                      context.read<KomikuDetailFetchBloc>().add(
                          KomikuDetailFetchEvent.started(param: widget.param));
                    },
                    child: Center(
                      child: Text(
                        value.errorMessage,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
              },
              orElse: () {
                return const Center(
                  child: LoadingWidget(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
