import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/logic/video_player_cubit/video_player_cubit.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';

class VideoResolutionBottomSheet extends StatelessWidget {
  final List<AnoboyLinksItemModel> links;

  const VideoResolutionBottomSheet({super.key, required this.links});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Resolution title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Resolutions",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            /// Resoultion list
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: links.length,
                itemBuilder: (context, index) {
                  final item = links[index];
                  return InkWell(
                    onTap: () {
                      /// Load video
                      context.read<VideoPlayerCubit>().loadVideo(
                            links: links,
                            url: item.link,
                          );

                      /// Pop the video
                      Navigator.of(context)
                        ..pop()
                        ..pop();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Text
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item.resolution),
                                Visibility(
                                  visible: context
                                          .watch<VideoPlayerCubit>()
                                          .state
                                          .chewieController
                                          ?.videoPlayerController
                                          .dataSource ==
                                      item.link,
                                  child: const Icon(Icons.check),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
