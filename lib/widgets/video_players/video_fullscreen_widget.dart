import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:universal_html/html.dart' as html;
import 'package:window_manager/window_manager.dart';

import '../../extensions/platform_extensions.dart';
import '../../logic/video_player_cubit/video_player_cubit.dart';
import 'custom_material_controls.dart';

class VideoFullscreenWidget extends StatefulWidget {
  const VideoFullscreenWidget({super.key});

  @override
  State<VideoFullscreenWidget> createState() => _VideoFullscreenWidgetState();
}

class _VideoFullscreenWidgetState extends State<VideoFullscreenWidget> {
  final playerGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
  }

  @override
  void dispose() {
    if (!kIsWeb) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, res) async {
        if (!didPop) return;

        if (kIsWeb) {
          html.document.exitFullscreen();
        } else if (PlatformExtension.isDesktop) {
          await WindowManager.instance.setFullScreen(false);
        }
      },
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, state) {
          final controller = state.controller;

          if (controller == null) {
            return const Scaffold(
              backgroundColor: Colors.black,
              body: Center(child: CircularProgressIndicator()),
            );
          }

          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            body: Center(
              child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: Stack(
                  key: playerGlobalKey,
                  children: [
                    VideoPlayer(controller),
                    CustomMaterialControls(
                      controller: controller,
                      isFullScreen: true,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
