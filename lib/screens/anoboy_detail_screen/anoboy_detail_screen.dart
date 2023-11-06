import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';
import 'package:weebs_app/logic/anoboy_detail_fetch_bloc/anoboy_detail_fetch_bloc.dart';
import 'package:weebs_app/logic/video_player_cubit/video_player_cubit.dart';
import 'package:weebs_app/widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/widgets/video_players/video_player_widget.dart';

import '../../routes/route_names.dart';

@RoutePage(name: RouteNames.anoboyDetailScreen)
class AnoboyDetailScreen extends StatefulWidget {
  final String param;
  const AnoboyDetailScreen({super.key, required this.param});

  @override
  State<AnoboyDetailScreen> createState() => _AnoboyDetailScreenState();
}

class _AnoboyDetailScreenState extends State<AnoboyDetailScreen> {
  @override
  void initState() {
    super.initState();

    context.read<AnoboyDetailFetchBloc>().add(
          AnoboyDetailFetchEvent.started(param: widget.param),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnoboyDetailFetchBloc, AnoboyDetailFetchState>(
        listener: (context, state) {
          state.maybeMap(
            completed: (value) {
              context.read<VideoPlayerCubit>().loadVideo(
                    links: value.anoboyDetailModel.videoDirectLinks,
                    url: value.anoboyDetailModel.videoDirectLinks.last.link,
                  );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            completed: (value) {
              return ListView(
                shrinkWrap: true,
                children: [
                  /// Video Player
                  const AspectRatio(
                    aspectRatio: 16 / 9,
                    child: VideoPlayerWidget(),
                  ),

                  /// Video Description and Navigation Links.
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Text(
                          value.anoboyDetailModel.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
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

  @override
  void dispose() {
    final videoPlayerCubit = getIt<VideoPlayerCubit>();
    videoPlayerCubit.reset();
    super.dispose();
  }
}
