import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/extensions/platform_extensions.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/anoboy_detail_fetch_bloc/anoboy_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/video_player_cubit/video_player_cubit.dart';
import 'package:weebs_app/screens/anoboy_detail_screen/widgets/anoboy_related_video.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/video_players/video_player_widget.dart';

import '../../routes/route_names.dart';
import '../../widgets/error_widget/error_screen.dart';
import 'widgets/anoboy_detail_description.dart';
import 'widgets/anoboy_detail_title.dart';

@RoutePage(name: RouteNames.anoboyDetailScreen)
class AnoboyDetailScreen extends StatefulWidget {
  final String param;
  const AnoboyDetailScreen({
    super.key,
    @PathParam('param') required this.param,
  });

  @override
  State<AnoboyDetailScreen> createState() => _AnoboyDetailScreenState();
}

class _AnoboyDetailScreenState extends State<AnoboyDetailScreen> {
  @override
  void initState() {
    super.initState();

    /// Get detail data
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnoboyDetailFetchBloc, AnoboyDetailFetchState>(
        listener: (context, state) {
          state.mapOrNull(
            completed: (value) {
              if (value.anoboyDetailModel.videoDirectLinks.isNotEmpty) {
                context.read<VideoPlayerCubit>().loadVideo(
                      links: value.anoboyDetailModel.videoDirectLinks,
                      url: value.anoboyDetailModel.videoDirectLinks.last.link,
                    );
              }
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            completed: (value) {
              if (value.errorMessage.isEmpty) {
                return ListView(
                  shrinkWrap: true,
                  children: [
                    /// Video Player
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: value.anoboyDetailModel.videoDirectLinks.isNotEmpty
                          ? Align(
                              alignment: Alignment.topCenter,
                              child: OrientationBuilder(
                                builder: (context, orientation) {
                                  if (orientation == Orientation.portrait) {
                                    return kIsWeb || PlatformExtension.isDesktop
                                        ? const VideoPlayerWidget()
                                        : const AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: VideoPlayerWidget(),
                                          );
                                  } else {
                                    return const VideoPlayerWidget();
                                  }
                                },
                              ),
                            )
                          : AppBar(
                              title: const Text(
                                "Video is not available",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                    ),

                    /// Video Description and Navigation Links.
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        /// Title
                        AnoboyDetailTitle(
                          anoboyDetailModel: value.anoboyDetailModel,
                        ),

                        /// Description.
                        AnoboyDetailDescription(
                          anoboyDetailModel: value.anoboyDetailModel,
                        ),

                        /// Related Video
                        AnoboyRelatedVideo(
                          anoboyDetailModel: value.anoboyDetailModel,
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return ErrorScreen(
                  errorMesasge: value.errorMessage,
                  onTap: () {
                    /// Refetch the detail data.
                    getData();
                  },
                );
              }
            },
            orElse: () {
              return const Center(
                child: LoadingWidget(),
              );
            },
          );
        },
      ),
    );
  }

  /// Get Data
  void getData() {
    context.read<AnoboyDetailFetchBloc>().add(
          AnoboyDetailFetchEvent.started(param: widget.param),
        );
  }

  @override
  void dispose() {
    final videoPlayerCubit = getIt<VideoPlayerCubit>();
    videoPlayerCubit.reset();
    super.dispose();
  }
}
