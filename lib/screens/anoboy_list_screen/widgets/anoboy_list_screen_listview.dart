import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/helpers/general/helper_functions.dart';
import 'package:weebs_app/logic/anoboy_fetch_bloc/anoboy_fetch_bloc.dart';
import 'package:weebs_app/model/anoboy/anoboy_list_model/anoboy_list_model.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/widgets/list_widget/wrap_list_item_widget.dart';
import 'package:weebs_app/widgets/list_widget/wrap_list_widget.dart';

import '../../../widgets/loading_widget/loading_widget.dart';

class AnoboyListScreenListView extends StatelessWidget {
  final String title;
  final AnoboyListModel animeList;
  const AnoboyListScreenListView(
      {super.key, required this.title, required this.animeList});

  @override
  Widget build(BuildContext context) {
    return WrapListWidget(
      title: title,
      list: animeList.data,
      child: (data) {
        return WrapListItemWidget(
          thumbnailLink: data.thumbnail,
          title: data.title,
          subtitle: data.uploadTime,
          containerWidth: getItemContainerWidth(context),
          imageHeight: 178.h,
          imageWidth: getItemContainerWidth(context),
          onTap: () {
            context.pushRoute(AnoboyDetailRoute(param: data.param));
          },
        );
      },
      loadMoreWidget: Visibility(
        visible: animeList.nextPage != null,
        child: SizedBox(
          height: 213.h,
          width: getItemContainerWidth(context),
          child: ElevatedButton(
            onPressed: () {
              /// Next Link
              final nextLink = animeList.nextPage;

              /// Next List
              if (nextLink != null) {
                context
                    .read<AnoboyFetchBloc>()
                    .add(AnoboyFetchEvent.loadMore(nextLink: nextLink));
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: BlocBuilder<AnoboyFetchBloc, AnoboyFetchState>(
              builder: (context, state) {
                return state.maybeMap(
                  completed: (value) {
                    if (value.isLoadMore) {
                      return Center(
                        child: SizedBox(
                          height: 80.h,
                          width: 80.h,
                          child: const LoadingWidget(),
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
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Item Container Width
  double getItemContainerWidth(BuildContext context) {
    return HelperFunction.isPortrait(context) ? 178.w : 210.w;
  }
}
