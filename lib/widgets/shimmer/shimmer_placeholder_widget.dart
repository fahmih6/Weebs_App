import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlaceholderWidget extends StatelessWidget {
  const ShimmerPlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey.shade300,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
      ),
    );
  }
}
