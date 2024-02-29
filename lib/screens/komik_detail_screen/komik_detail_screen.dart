import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../komik_detail_screen/widgets/komik_detail_list_chapter.dart';
import '../../logic/komiku_detail_fetch_bloc/komiku_detail_fetch_bloc.dart';
import '../../screens/komik_detail_screen/widgets/komik_detail_appbar.dart';
import '../../widgets/loading_widget/loading_widget.dart';
import '../../widgets/texts/readmore.dart';
import '../../routes/route_names.dart';

@RoutePage(name: RouteNames.komikDetailScreen)
class KomikDetailScreen extends StatefulWidget {
  final String param;
  const KomikDetailScreen({
    super.key,
    @PathParam('param') required this.param,
  });

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
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.black, Colors.transparent],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                                child: Text(
                                  value.komikuDetailModel.title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              /// Description
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                  right: 16,
                                ),
                                child: ReadMoreText(
                                  "${value.komikuDetailModel.synopsis} ",
                                  trimLines: 2,
                                  trimMode: TrimMode.line,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
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
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                  right: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Chapters",
                                      style: TextStyle(
                                        fontSize: 20,
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
                                          child: const Icon(Icons.sort, size: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              /// List of chapters
                              Flexible(
                                child: KomikDetailListChapter(
                                  komikuDetailModel: value.komikuDetailModel,
                                  isReversed: _flipList,
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
                                param: widget.param,
                              ),
                            );
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
