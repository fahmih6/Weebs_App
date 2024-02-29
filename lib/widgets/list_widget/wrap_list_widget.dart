import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WrapListWidget<T> extends StatelessWidget {
  final String? title;
  final List<T> list;
  final Widget Function(T data) child;
  final Widget? loadMoreWidget;
  final AlignmentGeometry? listAlignment;
  const WrapListWidget({
    super.key,
    required this.title,
    required this.list,
    required this.child,
    this.loadMoreWidget,
    this.listAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Visibility(
          visible: title != null,
          child: Padding(
            padding: EdgeInsets.only(left: 8.h, bottom: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title ?? 'Title',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Content
        Flexible(
          child: Align(
            alignment: listAlignment ?? Alignment.topCenter,
            child: Wrap(
              runSpacing: 8.h,
              spacing: 8.h,
              children: [
                /// Anime Item
                ...list.map((e) => child(e)),

                /// Load More
                loadMoreWidget ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
