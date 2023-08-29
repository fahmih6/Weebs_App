import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/screens/komik_detail_screen/widgets/komik_detail_appbar.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/texts/readmore.dart';

import '../../logic/komiku_read_bloc/komiku_read_bloc.dart';
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
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: state.maybeMap(
                completed: (value) {
                  if (value.errorMessage.isEmpty) {
                    return CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        KomikDetailAppbar(
                          komikuDetailModel: value.komikuDetailModel,
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
                                      title: Text(
                                        item.chapter,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      trailing: Text(
                                        item.release,
                                        style: TextStyle(fontSize: 13.sp),
                                      ),
                                      shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      onTap: () {
                                        context.pushRoute(
                                          KomikReadRoute(
                                            param: item.param,
                                          ),
                                        );

                                        /// Mark as read
                                        context.read<KomikuReadBloc>().add(
                                              KomikuReadEvent.markAsRead(
                                                komikuData:
                                                    value.komikuDetailModel,
                                                chapterParam: item.param,
                                              ),
                                            );
                                      },
                                      tileColor: context
                                              .watch<KomikuReadBloc>()
                                              .isChapterRead(
                                                  komikuParam: value
                                                      .komikuDetailModel.param,
                                                  chapterParam: item.param)
                                          ? Theme.of(context).highlightColor
                                          : Colors.transparent,
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
                            KomikuDetailFetchEvent.started(
                                param: widget.param));
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
              ),
            );
          },
        ),
      ),
    );
  }
}
