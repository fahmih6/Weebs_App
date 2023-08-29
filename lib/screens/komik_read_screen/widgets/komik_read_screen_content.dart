import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/logic/komik_read_appbar_cubit/komik_read_appbar_cubit.dart';
import 'package:weebs_app/screens/komik_read_screen/widgets/komik_read_screen_content_appbar.dart';

import '../../../model/komiku/komiku_detail_model/komiku_detail_model.dart';
import 'komik_read_screen_content_image_listview.dart';

class KomikReadScreenContent extends StatelessWidget {
  final List<KomikuChapterFetchModel> chapterList;
  const KomikReadScreenContent({super.key, required this.chapterList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          context.read<KomikReadAppbarCubit>().toggleShowAppbar();
        },
        child: Stack(
          children: [
            /// Komik Viewer
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: KomikReadScreenContentImageListView(
                chapterList: chapterList,
              ),
            ),

            /// App Bar
            const KomikReadScreenContentAppbar(),
          ],
        ),
      ),
    );
  }
}
