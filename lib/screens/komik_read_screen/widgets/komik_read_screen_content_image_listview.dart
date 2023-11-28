import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/model/settings/settings_model.dart';
import 'package:weebs_app/widgets/shimmer/shimmer_placeholder_widget.dart';

import '../../../logic/settings_bloc/settings_bloc.dart';
import '../../../model/komiku/komiku_detail_model/komiku_detail_model.dart';

class KomikReadScreenContentImageListView extends StatefulWidget {
  final List<KomikuChapterFetchModel> chapterList;
  const KomikReadScreenContentImageListView({
    super.key,
    required this.chapterList,
  });

  @override
  State<KomikReadScreenContentImageListView> createState() =>
      _KomikReadScreenContentImageListViewState();
}

class _KomikReadScreenContentImageListViewState
    extends State<KomikReadScreenContentImageListView>
    with TickerProviderStateMixin {
  /// Transformation Controller
  final TransformationController _transformationController =
      TransformationController();

  /// Scale value
  final ValueNotifier<double> _scale = ValueNotifier<double>(1.0);

  /// Double tab details
  TapDownDetails _doubleTapDetails = TapDownDetails();

  /// Animation Controller
  late AnimationController _animationController;

  /// Animation Value
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );

    _animationController.addListener(animationListener);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: _handleDoubleTapDown,
      onDoubleTap: _handleDoubleTap,
      child: ValueListenableBuilder<double>(
        valueListenable: _scale,
        builder: (context, value, child) {
          return InteractiveViewer(
            panEnabled: value > 1.0,
            scaleEnabled: true,
            transformationController: _transformationController,
            onInteractionEnd: (details) {
              _scale.value =
                  _transformationController.value.getMaxScaleOnAxis();
            },

            /// Chapter Detail List
            child: ListView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: widget.chapterList.length,
              itemBuilder: (context, index) {
                final item = widget.chapterList[index];

                /// Chapter Images List from Chapter Detail
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: item.chapterUrls.length,
                  itemBuilder: (context, index) {
                    final image = item.chapterUrls[index];
                    return BlocBuilder<SettingsBloc, SettingsState>(
                      builder: (context, state) {
                        return state.map(
                          state: (value) {
                            final komikReadImageMode =
                                value.settingsData.komikReadImageMode;
                            return CachedNetworkImage(
                              fit: komikReadImageMode ==
                                      KomikReadImageMode.fillWidth
                                  ? BoxFit.fill
                                  : null,
                              imageUrl: image,
                              height: komikReadImageMode ==
                                      KomikReadImageMode.fitHeight
                                  ? MediaQuery.of(context).size.height
                                  : null,
                              placeholder: (context, url) => SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                                child: const ShimmerPlaceholderWidget(),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  void animationListener() {
    _transformationController.value =
        animation?.value ?? _transformationController.value;
    _scale.value = _transformationController.value.getMaxScaleOnAxis();
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    /// Start the animation
    if (_transformationController.value != Matrix4.identity()) {
      animation = Matrix4Tween(
        begin: Matrix4.identity(),
        end: _transformationController.value,
      ).animate(_animationController);

      /// Reverse the animation
      _animationController.reverse();
    } else {
      final position = _doubleTapDetails.localPosition;
      // For a 2.5x zoom
      animation = Matrix4Tween(
        begin: _transformationController.value,
        end: Matrix4.identity()
          ..translate(-position.dx * 1.5, -position.dy * 1.5)
          ..scale(2.5),
      ).animate(_animationController);

      _animationController.forward();
    }

    /// If animation is dismissed, then reset
    if (_animationController.status == AnimationStatus.dismissed) {
      _animationController.reset();
    }
  }

  @override
  void dispose() {
    _transformationController.dispose();
    _animationController.removeListener(animationListener);
    _animationController.dispose();
    super.dispose();
  }
}
