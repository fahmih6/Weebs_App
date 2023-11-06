import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/komiku_read_bloc/komiku_read_bloc.dart';
import '../../../model/komiku/komiku_detail_model/komiku_detail_model.dart';
import '../../../routes/app_router.dart';

class KomikDetailListChapter extends StatelessWidget {
  final KomikuDetailModel komikuDetailModel;
  final bool isReversed;
  const KomikDetailListChapter(
      {super.key, required this.komikuDetailModel, required this.isReversed});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: komikuDetailModel.chapters.length,
      itemBuilder: (context, index) {
        final item = isReversed
            ? komikuDetailModel.chapters.reversed.toList()[index]
            : komikuDetailModel.chapters[index];
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
                    komikuData: komikuDetailModel,
                    chapterParam: item.param,
                  ),
                );
          },
          tileColor: context.watch<KomikuReadBloc>().isChapterRead(
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
