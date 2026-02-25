import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/komik_read_bloc/komik_read_bloc.dart';
import '../../../model/komiku/komiku_detail_model/komiku_detail_model.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import '../../../routes/app_router.dart';

class KomikDetailListChapter extends StatelessWidget {
  final KomikuDetailModel komikuDetailModel;
  final bool isReversed;
  final MangaProvider provider;
  const KomikDetailListChapter({
    super.key,
    required this.komikuDetailModel,
    required this.isReversed,
    this.provider = MangaProvider.komiku,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: komikuDetailModel.chapters.length,
      itemBuilder: (context, index) {
        final item = isReversed
            ? komikuDetailModel.chapters.reversed.toList()[index]
            : komikuDetailModel.chapters[index];
        return ListTile(
          title: Text(
            item.chapter.toLowerCase().contains('chapter')
                ? item.chapter
                : 'Chapter ${item.chapter}',
            style: const TextStyle(fontSize: 16),
          ),
          trailing: Text(item.release, style: const TextStyle(fontSize: 13)),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onTap: () {
            /// The param for komikcast should be slug/chapter
            final String chapterParam = provider == MangaProvider.komikcast
                ? "${komikuDetailModel.param}/${item.param}"
                : item.param;

            context.pushRoute(
              KomikReadRoute(param: chapterParam, provider: provider),
            );

            /// Mark as read
            context.read<KomikReadBloc>().add(
              KomikReadEvent.markAsRead(
                komikuData: komikuDetailModel,
                chapterParam: item.param,
              ),
            );
          },
          tileColor:
              context.watch<KomikReadBloc>().isChapterRead(
                komikuParam: komikuDetailModel.param,
                chapterParam: item.param,
              )
              ? Theme.of(context).highlightColor
              : Colors.transparent,
        );
      },
    );
  }
}
