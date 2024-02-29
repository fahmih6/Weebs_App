import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universal_html/html.dart' as html;
import 'package:window_manager/window_manager.dart';

import '../../extensions/platform_extensions.dart';
import '../../helpers/get_it_helper/get_it_helper.dart';
import '../../logic/video_player_cubit/video_player_cubit.dart';

class VideoFullscreenWidget extends StatefulWidget {
  final Animation<double> animation;
  final ChewieControllerProvider controllerProvider;
  const VideoFullscreenWidget({
    super.key,
    required this.animation,
    required this.controllerProvider,
  });

  @override
  State<VideoFullscreenWidget> createState() => _VideoFullscreenWidgetState();
}

class _VideoFullscreenWidgetState extends State<VideoFullscreenWidget> {
  /// Chewie Global Key
  final chewieGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /// Request Native full screen.
        if (kIsWeb) {
          getIt<VideoPlayerCubit>().webReinitialize();
          html.document.exitFullscreen();
        } else if (PlatformExtension.isDesktop) {
          await WindowManager.instance.setFullScreen(false);
        }

        /// Return true
        return Future.value(true);
      },
      child: AnimatedBuilder(
        animation: widget.animation,
        builder: (BuildContext context, Widget? child) {
          /// Full Screen Widget
          return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
            builder: (context, state) {
              /// Chewie Controller
              final chewieController = state.chewieController ??
                  widget.controllerProvider.controller;

              /// New Controller Provider
              final ChewieControllerProvider newControllerProvider =
                  ChewieControllerProvider(
                controller: chewieController,
                child: GestureDetector(
                  onDoubleTapDown: (details) {
                    onDoubleTap(
                      details: details,
                      state: state,
                      chewieController: chewieController,
                    );
                  },
                  child: Container(
                    key: chewieGlobalKey,
                    child: widget.controllerProvider.child,
                  ),
                ),
              );

              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: newControllerProvider,
                ),
              );
            },
          );
        },
      ),
    );
  }

  /// On Double Tap.
  Future<void> onDoubleTap({
    required TapDownDetails details,
    required VideoPlayerState state,
    required ChewieController chewieController,
  }) async {
    /// Player size
    final playerSize = chewieGlobalKey.currentContext?.size;

    /// Last Position
    final lastPosition = state.lastPosition;

    if (playerSize != null && lastPosition != null) {
      /// Thrid Size
      final thirdSize = playerSize.width / 3;

      /// Dx
      final dx = details.globalPosition.dx;

      /// Determines if center
      final isCenter = dx >= thirdSize && dx <= thirdSize * 2;

      /// Backwards
      if (dx < thirdSize && !isCenter) {
        await chewieController.seekTo(
          lastPosition - const Duration(seconds: 5),
        );
      }

      /// Forwards
      else if (dx > thirdSize && !isCenter) {
        await chewieController.seekTo(
          lastPosition + const Duration(seconds: 5),
        );
      }
    }
  }
}
