import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../enum/manga_provider.dart';
import '../../../model/komiku/komiku_detail_model/komiku_detail_model.dart';
import '../../../logic/favourites_bloc/favourites_bloc.dart';
import '../../../widgets/clipper/inverted_bottom_border.dart';
import '../../../widgets/shimmer/shimmer_placeholder_widget.dart';

class KomikDetailAppbar extends StatelessWidget {
  final KomikuDetailModel komikuDetailModel;
  final MangaProvider provider;
  const KomikDetailAppbar({
    super.key,
    required this.komikuDetailModel,
    this.provider = MangaProvider.komiku,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 416.h,
      collapsedHeight: 80 < kToolbarHeight ? kToolbarHeight : 80,
      scrolledUnderElevation: 0,
      stretch: true,
      flexibleSpace: ClipPath(
        clipper: const InvertedBottomBorder(radius: 16),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.125,
              image: CachedNetworkImageProvider(komikuDetailModel.thumbnail),
            ),
          ),
          child: Column(
            children: [
              /// Image
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 64.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: komikuDetailModel.thumbnail,
                      height: double.infinity,
                      fit: BoxFit.fitHeight,
                      placeholder: (context, url) =>
                          const ShimmerPlaceholderWidget(),
                    ),
                  ),
                ),
              ),

              /// Tambahkan ke Favorit
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 20.h),
                child: Tooltip(
                  enableFeedback: true,
                  message: komikuDetailModel.title,
                  child: BlocBuilder<FavouritesBloc, FavouritesState>(
                    builder: (context, state) {
                      /// Is komik is already added to the favourites
                      final isExist = provider == MangaProvider.komikcast
                          ? state.komikcastList.firstWhereOrNull(
                                  (element) =>
                                      element.param == komikuDetailModel.param,
                                ) !=
                                null
                          : state.komikuList.firstWhereOrNull(
                                  (element) =>
                                      element.param == komikuDetailModel.param,
                                ) !=
                                null;

                      /// Widget
                      return ElevatedButton(
                        onPressed: () {
                          if (!isExist) {
                            context.read<FavouritesBloc>().add(
                              FavouritesEvent.added(
                                komikuData: komikuDetailModel,
                                provider: provider,
                              ),
                            );
                          } else {
                            context.read<FavouritesBloc>().add(
                              FavouritesEvent.removed(
                                komikuData: komikuDetailModel,
                                provider: provider,
                              ),
                            );
                          }
                        },
                        child: Text(
                          !isExist
                              ? "Add to Favourite"
                              : "Remove from Favourite",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
