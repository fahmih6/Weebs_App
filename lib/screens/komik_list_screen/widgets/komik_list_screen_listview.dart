import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/komiku_list_komik_fetch_bloc/komiku_list_komik_fetch_bloc.dart';
import 'package:weebs_app/screens/komik_list_screen/widgets/komik_list_screen_list_item.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';

import '../../../model/komiku/komiku_list_model/komiku_list_model.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),

        /// Content
        Flexible(
          child: Align(
            alignment: komikuList.data.length <= 2
                ? Alignment.centerLeft
                : Alignment.topCenter,
            child: Wrap(
              runSpacing: 8.h,
              spacing: 8.h,
              children: [
                /// Komik Item
                ...komikuList.data
                    .map(
                      (item) => KomikListScreenListItem(item: item),
                    )
                    .toList(),

                /// Selengkapnya
                Visibility(
                  visible: komikuList.nextPage != null,
                  child: SizedBox(
                    height: 213.h,
                    width: 120.h,
                    child: ElevatedButton(
                      onPressed: () {
                        /// Komiku bloc
                        final komikuBloc =
                            context.read<KomikuListKomikFetchBloc>();

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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
