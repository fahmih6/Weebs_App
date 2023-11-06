import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../logic/video_player_cubit/video_player_cubit.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  /// Chewie Global Key
  final chewieGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        final chewieController = state.chewieController;
        if (chewieController != null) {
          return SizedBox(
            child: ValueListenableBuilder<VideoPlayerValue>(
              valueListenable: chewieController.videoPlayerController,
              builder: (context, value, child) {
                return IgnorePointer(
                  ignoring: !value.isInitialized,
                  child: GestureDetector(
                    onDoubleTapDown: (details) async {
                      await onDoubleTap(
                        details: details,
                        state: state,
                        chewieController: chewieController,
                      );
                    },
                    child: Chewie(
                      key: chewieGlobalKey,
                      controller: chewieController,
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
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
