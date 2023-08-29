import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_chapter_fetch_bloc/komiku_chapter_fetch_bloc.dart';

import '../../routes/route_names.dart';
import '../../widgets/loading_widget/loading_widget.dart';
import 'widgets/komik_read_screen_content.dart';

@RoutePage(name: RouteNames.komikReadScreen)
class KomikReadScreen extends StatefulWidget {
  final String param;
  const KomikReadScreen({super.key, required this.param});

  @override
  State<KomikReadScreen> createState() => _KomikReadScreenState();
}

class _KomikReadScreenState extends State<KomikReadScreen> {
  @override
  void initState() {
    super.initState();

    /// Fetch the images
    context
        .read<KomikuChapterFetchBloc>()
        .add(KomikuChapterFetchEvent.started(param: widget.param));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: BlocBuilder<KomikuChapterFetchBloc, KomikuChapterFetchState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (value) {
                return const SizedBox(
                  child: Center(
                    child: LoadingWidget(),
                  ),
                );
              },
              completed: (value) {
                return KomikReadScreenContent(
                  chapterList: value.chapterData,
                );
              },
              orElse: () {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Error Loading Chapters",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<KomikuChapterFetchBloc>().add(
                                KomikuChapterFetchEvent.started(
                                  param: widget.param,
                                ),
                              );
                        },
                        child: Text(
                          "Reload",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
