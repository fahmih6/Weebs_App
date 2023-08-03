import 'package:flutter/material.dart';

class InvertedBottomBorder extends CustomClipper<Path> {
  final bool left;
  final bool right;
  final double radius;

  const InvertedBottomBorder({
    this.left = true,
    this.right = true,
    this.radius = 40,
  });

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - (right ? 0 : radius))
      ..quadraticBezierTo(size.width, size.height - radius, size.width - radius,
          size.height - radius)
      ..lineTo(radius, size.height - radius)
      ..quadraticBezierTo(
          0, size.height - radius, 0, size.height - (left ? 0 : radius))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
