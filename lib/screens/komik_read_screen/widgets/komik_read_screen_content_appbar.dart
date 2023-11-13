import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_chapter_fetch_bloc/komiku_chapter_fetch_bloc.dart';

import '../../../logic/komik_read_appbar_cubit/komik_read_appbar_cubit.dart';

class KomikReadScreenContentAppbar extends StatefulWidget {
  const KomikReadScreenContentAppbar({super.key});

  @override
  State<KomikReadScreenContentAppbar> createState() =>
      _KomikReadScreenContentAppbarState();
}

class _KomikReadScreenContentAppbarState
    extends State<KomikReadScreenContentAppbar> {
  @override
  void initState() {
    super.initState();

    /// Get current chapter param
    final currentChapterParam =
        context.read<KomikuChapterFetchBloc>().state.mapOrNull(
                  completed: (value) =>
                      value.chapterData.firstOrNull?.chapterParam,
                ) ??
            "-";

    /// Init
    context
        .read<KomikReadAppbarCubit>()
        .init(currentChapterParam: currentChapterParam);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KomikReadAppbarCubit, KomikReadAppbarState>(
      builder: (context, state) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: state.shouldShow ? 1 : 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              children: [
                /// Back button
                IconButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),

                /// Title
                Text(
                  state.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
