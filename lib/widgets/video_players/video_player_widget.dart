import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../logic/video_player_cubit/video_player_cubit.dart';
import 'custom_material_controls.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  /// Global Key
  final playerGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        final controller = state.controller;
        if (controller != null && controller.value.isInitialized) {
          return Stack(
            key: playerGlobalKey,
            children: [
              VideoPlayer(controller),
              CustomMaterialControls(controller: controller),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
