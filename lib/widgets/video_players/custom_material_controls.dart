import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:cached_video_player_plus/cached_video_player_plus.dart';
import 'package:universal_html/html.dart' as html;
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:window_manager/window_manager.dart';
import '../../extensions/platform_extensions.dart';
import '../../logic/video_player_cubit/video_player_cubit.dart';
import 'video_fullscreen_widget.dart';
import 'video_resolution_bottomsheet.dart';

class CustomMaterialControls extends StatefulWidget {
  final CachedVideoPlayerPlus controller;
  final bool isFullScreen;

  const CustomMaterialControls({
    super.key,
    required this.controller,
    this.isFullScreen = false,
  });

  @override
  State<CustomMaterialControls> createState() => _CustomMaterialControlsState();
}

class _CustomMaterialControlsState extends State<CustomMaterialControls> {
  bool _hideStuff = true;
  Timer? _hideTimer;
  late VideoPlayerValue _latestValue;
  bool _isWakelockEnabled = false;
  bool _isLongPressing = false;
  final FocusNode _focusNode = FocusNode();

  final barHeight = 48.0;
  final marginSize = 16.0;

  @override
  void initState() {
    super.initState();
    _latestValue = widget.controller.controller.value;
    widget.controller.controller.addListener(_updateState);
    _startHideTimer();
  }

  @override
  void dispose() {
    widget.controller.controller.removeListener(_updateState);
    _hideTimer?.cancel();
    WakelockPlus.disable();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CustomMaterialControls oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller.controller.removeListener(_updateState);
      _latestValue = widget.controller.controller.value;
      widget.controller.controller.addListener(_updateState);
    }
  }

  void _updateState() {
    if (!mounted) return;
    setState(() {
      _latestValue = widget.controller.controller.value;
    });

    final shouldEnableWakelock = _latestValue.isPlaying;
    if (shouldEnableWakelock != _isWakelockEnabled) {
      _isWakelockEnabled = shouldEnableWakelock;
      if (shouldEnableWakelock) {
        WakelockPlus.enable();
      } else {
        WakelockPlus.disable();
      }
    }
  }

  void _cancelAndRestartTimer() {
    _hideTimer?.cancel();
    _startHideTimer();
    setState(() {
      _hideStuff = false;
    });
  }

  void _startHideTimer() {
    _hideTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _hideStuff = true;
        });
      }
    });
  }

  void _playPause() {
    setState(() {
      if (_latestValue.isPlaying) {
        widget.controller.controller.pause();
      } else {
        if (!widget.controller.isInitialized) {
          widget.controller.initialize().then(
            (_) => widget.controller.controller.play(),
          );
        } else {
          if (_latestValue.position >= _latestValue.duration) {
            widget.controller.controller.seekTo(Duration.zero);
          }
          widget.controller.controller.play();
        }
      }
    });
    _cancelAndRestartTimer();
  }

  void _toggleSpeed() {
    final currentSpeed = _latestValue.playbackSpeed;
    final nextSpeed = currentSpeed == 1.5 ? 1.0 : 1.5;
    widget.controller.controller.setPlaybackSpeed(nextSpeed);
    _cancelAndRestartTimer();
  }

  void _toggleFullScreen() async {
    final cubit = context.read<VideoPlayerCubit>();
    if (kIsWeb) {
      if (widget.isFullScreen) {
        html.document.exitFullscreen();
        Navigator.of(context).pop();
      } else {
        html.document.documentElement?.requestFullscreen();
        cubit.setFullScreen(true);
        Navigator.of(context)
            .push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const VideoFullscreenWidget(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            )
            .then((_) => cubit.setFullScreen(false));
      }
    } else if (PlatformExtension.isDesktop) {
      final isFullScreen = await WindowManager.instance.isFullScreen();
      await WindowManager.instance.setFullScreen(!isFullScreen);
      if (!mounted) return;
      if (!isFullScreen) {
        cubit.setFullScreen(true);
        Navigator.of(context)
            .push(
              MaterialPageRoute(builder: (_) => const VideoFullscreenWidget()),
            )
            .then((_) => cubit.setFullScreen(false));
      } else {
        Navigator.of(context).pop();
      }
    } else {
      if (widget.isFullScreen) {
        Navigator.of(context).pop();
      } else {
        cubit.setFullScreen(true);
        Navigator.of(context)
            .push(
              MaterialPageRoute(builder: (_) => const VideoFullscreenWidget()),
            )
            .then((_) => cubit.setFullScreen(false));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_latestValue.hasError) {
      return const Center(
        child: Icon(Icons.error, color: Colors.white, size: 42),
      );
    }

    return MouseRegion(
      onHover: (_) => _cancelAndRestartTimer(),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (_hideStuff) {
            _cancelAndRestartTimer();
          } else {
            setState(() {
              _hideStuff = true;
            });
          }
        },
        onDoubleTap: () {
          // Empty callback to prevent onTap from firing twice during double tap
        },
        onDoubleTapDown: (details) {
          _onDoubleTap(details);
        },
        onLongPress: () {
          setState(() => _isLongPressing = true);
          widget.controller.controller.setPlaybackSpeed(1.5);
        },
        onLongPressUp: () {
          setState(() => _isLongPressing = false);
          widget.controller.controller.setPlaybackSpeed(1.0);
        },
        child: Focus(
          focusNode: _focusNode,
          onKeyEvent: (FocusNode node, KeyEvent event) {
            if (event is KeyDownEvent) {
              if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                _seekRelative(const Duration(seconds: 5));
                return KeyEventResult.handled;
              } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                _seekRelative(const Duration(seconds: -5));
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },
          child: Stack(
            children: [
              _buildHitArea(),
              _buildSpeedOverlay(),
              ValueListenableBuilder(
                valueListenable: widget.controller.controller,
                builder: (context, VideoPlayerValue value, child) {
                  if (!value.isBuffering) {
                    return const SizedBox.shrink();
                  }

                  // On Android, isBuffering often stays true even when playback is possible.
                  // We check if the current position is well within the buffered ranges.
                  if (value.isPlaying && value.buffered.isNotEmpty) {
                    final currentPos = value.position;
                    for (final range in value.buffered) {
                      if (currentPos >= range.start &&
                          currentPos <= range.end) {
                        // If we have more than 1 second of video buffered ahead, hide the spinner.
                        if (range.end - currentPos >
                            const Duration(seconds: 1)) {
                          return const SizedBox.shrink();
                        }
                      }
                    }
                  }

                  return const Center(child: CircularProgressIndicator());
                },
              ),
              _buildActionBar(),
              _buildBottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  void _seekRelative(Duration offset) {
    final newPosition = _latestValue.position + offset;
    widget.controller.controller.seekTo(
      newPosition < Duration.zero
          ? Duration.zero
          : newPosition > _latestValue.duration
          ? _latestValue.duration
          : newPosition,
    );
    _cancelAndRestartTimer();
  }

  void _onDoubleTap(TapDownDetails details) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final playerSize = box.size;
    final thirdSize = playerSize.width / 3;
    final dx = details.localPosition.dx;

    if (dx < thirdSize) {
      // Seek backward
      _seekRelative(const Duration(seconds: -10));
    } else if (dx > thirdSize * 2) {
      // Seek forward
      _seekRelative(const Duration(seconds: 10));
    } else {
      // Center tap - toggle play/pause
      if (!_hideStuff) {
        _playPause();
      }
    }
    _cancelAndRestartTimer();
  }

  Widget _buildHitArea() {
    return IgnorePointer(
      ignoring: _hideStuff,
      child: AnimatedOpacity(
        opacity: _hideStuff ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: IconButton(
            iconSize: 64,
            icon: Icon(
              _latestValue.isPlaying ? Icons.pause : Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: _playPause,
          ),
        ),
      ),
    );
  }

  Widget _buildSpeedOverlay() {
    if (_latestValue.playbackSpeed == 1.0 || !_isLongPressing) {
      return const SizedBox.shrink();
    }
    return IgnorePointer(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "${_latestValue.playbackSpeed}x",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: _hideStuff ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          height: barHeight,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black54, Colors.transparent],
            ),
          ),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const Spacer(),
              IconButton(
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: _showResolutionBottomSheet,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: _hideStuff ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black54, Colors.transparent],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                spacing: 8,
                children: [
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      _latestValue.isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onPressed: _playPause,
                  ),
                  _buildPosition(),
                  Expanded(child: _buildProgressBar()),
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: Text(
                      '1.5x',
                      style: TextStyle(
                        color: _latestValue.playbackSpeed == 1.5
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    onPressed: _toggleSpeed,
                  ),
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      widget.isFullScreen
                          ? Icons.fullscreen_exit
                          : Icons.fullscreen,
                      color: Colors.white,
                    ),
                    onPressed: _toggleFullScreen,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showResolutionBottomSheet() {
    final state = context.read<VideoPlayerCubit>().state;
    if (state.links.isNotEmpty) {
      showModalBottomSheet(
        context: context,
        builder: (context) => VideoResolutionBottomSheet(links: state.links),
      );
    }
  }

  Widget _buildPosition() {
    final position = _latestValue.position;
    final duration = _latestValue.duration;
    return Text(
      '${_formatDuration(position)} / ${_formatDuration(duration)}',
      style: const TextStyle(color: Colors.white, fontSize: 12),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0) {
      return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    }
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  Widget _buildProgressBar() {
    return VideoProgressIndicator(
      widget.controller.controller,
      allowScrubbing: true,
      colors: VideoProgressColors(
        playedColor: Theme.of(context).primaryColor,
        bufferedColor: Colors.white24,
        backgroundColor: Colors.white12,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
