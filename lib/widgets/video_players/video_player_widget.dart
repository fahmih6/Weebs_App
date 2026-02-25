import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../logic/video_player_cubit/video_player_cubit.dart';
import 'custom_material_controls.dart';

class VideoPlayerWidget extends StatefulWidget {
  final bool isFullScreen;
  const VideoPlayerWidget({super.key, this.isFullScreen = false});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        final controller = state.controller;
        if (controller != null && controller.isInitialized) {
          return Stack(
            children: [
              Center(
                child: AspectRatio(
                  aspectRatio: controller.controller.value.aspectRatio,
                  child: VideoPlayer(controller.controller),
                ),
              ),
              CustomMaterialControls(
                controller: controller,
                isFullScreen: widget.isFullScreen,
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
