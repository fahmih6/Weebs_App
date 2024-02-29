import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/helpers/general/helper_functions.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/widgets/list_widget/wrap_list_item_widget.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';

import '../../../model/komiku/komiku_list_model/komiku_list_model.dart';
import '../../../routes/app_router.dart';
import '../../../widgets/list_widget/wrap_list_widget.dart';

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
    return WrapListWidget(
      title: title,
      list: komikuList.data,
      child: (data) {
        return WrapListItemWidget(
          thumbnailLink: data.thumbnail,
          title: data.title,
          subtitle: data.latestChapter,
          containerWidth: getItemContainerWidth(context),
          imageHeight: 180,
          imageWidth: getItemContainerWidth(context),
          titleMaxLines: 2,
          onTap: () {
            context.pushRoute(KomikDetailRoute(param: data.param));
          },
        );
      },
      listAlignment:
          komikuList.data.length <= 2 ? Alignment.topLeft : Alignment.topCenter,
      loadMoreWidget: Visibility(
        visible: komikuList.nextPage != null,
        child: SizedBox(
          height: 213,
          width: getItemContainerWidth(context),
          child: ElevatedButton(
            onPressed: () {
              /// Komiku bloc
              final komikuBloc = context.read<KomikuListKomikFetchBloc>();

              /// Only perform is load more when is load more is not active
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
            child: BlocBuilder<KomikuListKomikFetchBloc,
                KomikuListKomikFetchState>(
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
                      return const Text(
                        "Load More",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
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
    return HelperFunction.isPortrait(context) ? 119 : 142;
  }
}
