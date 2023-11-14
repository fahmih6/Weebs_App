import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/logic/appbar_video_cubit/appbar_video_cubit.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';
import 'package:weebs_app/widgets/video_players/appbar_video_player.dart';

import '../../../model/anoboy/anoboy_list_model/anoboy_list_model.dart';

class AnoboyListScreenAppbar extends StatelessWidget {
  final AnoboyListModel animeList;
  const AnoboyListScreenAppbar({super.key, required this.animeList});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        return SliverAppBar(
          backgroundColor: Colors.transparent,
          stretch: true,
          toolbarHeight: 200.h,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            child: FlexibleSpaceBar(
              /// App bar image
              background: InkWell(
                onTap: () {
                  context.pushRoute(
                    AnoboyDetailRoute(param: animeList.data.first.param),
                  );
                },
                child: Stack(
                  children: [
                    /// Background image
                    CachedNetworkImage(
                      imageUrl: animeList.data.firstOrNull?.thumbnail ?? '',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return const ShimmerPlaceholderWidget();
                      },
                      errorWidget: (context, url, error) {
                        return Container(
                          color: Colors.black,
                        );
                      },
                    ),

                    /// App Bar Video Player
                    AnimatedOpacity(
                      opacity: shouldHideVideo(
                        context: context,
                        constraints: constraints,
                      )
                          ? 0
                          : 1,
                      duration: const Duration(milliseconds: 250),
                      child:
                          AppbarVideoPlayer(param: animeList.data.first.param),
                    ),
                  ],
                ),
              ),

              /// Set only bottom padding
              titlePadding: EdgeInsets.only(bottom: 16.h),

              /// App bar title
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: InkWell(
                  onTap: () {
                    context.pushRoute(
                      AnoboyDetailRoute(param: animeList.data.first.param),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.7),
                    ),
                    child: Text(
                      animeList.data.first.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Should Hide Video
  bool shouldHideVideo({
    required BuildContext context,
    required SliverConstraints constraints,
  }) {
    /// Is Scrolled
    final scrolled = constraints.scrollOffset > 150.h;

    /// App bar cubit
    final appbarCubit = context.watch<AppbarVideoCubit>();

    /// Video player controller
    final controller = context.read<AppbarVideoCubit>().videoPlayerController;

    /// If scrolled down, pause the video, otherwise, resume it
    if (scrolled &&
        controller != null &&
        controller.value.isPlaying &&
        !appbarCubit.state.shouldStop) {
      controller.pause();
    } else if (!scrolled &&
        controller != null &&
        !controller.value.isPlaying &&
        !appbarCubit.state.shouldStop) {
      controller.play();
    }

    return scrolled;
  }
}
