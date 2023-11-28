import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:weebs_app/logic/appbar_video_cubit/appbar_video_cubit.dart';
import 'package:weebs_app/logic/settings_bloc/settings_bloc.dart';

class AppbarVideoPlayer extends StatefulWidget {
  final String param;
  const AppbarVideoPlayer({super.key, required this.param});

  @override
  State<AppbarVideoPlayer> createState() => _AppbarVideoPlayerState();
}

class _AppbarVideoPlayerState extends State<AppbarVideoPlayer> {
  @override
  void initState() {
    super.initState();

    /// If App Bar Video is activated, then play the video.
    context.read<SettingsBloc>().state.map(
      state: (value) {
        if (value.settingsData.anoboyAppBarVideo) {
          context.read<AppbarVideoCubit>().init(param: widget.param);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        alignment: Alignment.center,
        child: SizedBox(
          child: BlocBuilder<AppbarVideoCubit, AppbarVideoState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: state.map(
                  state: (value) {
                    final controller = value.videoPlayerController;
                    if (controller != null && !state.shouldStop) {
                      return ValueListenableBuilder(
                          valueListenable: controller,
                          builder: (context, value, child) {
                            if (value.isInitialized) {
                              return SizedBox(
                                height: controller.value.size.height,
                                width: controller.value.size.width,
                                child: VideoPlayer(controller),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          });
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
