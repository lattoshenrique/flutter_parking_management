import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';

class ShimmerWidget extends StatelessWidget {
  final Color baseColor;
  final Color highlightColor;
  final Widget child;

  const ShimmerWidget({
    super.key,
    required this.baseColor,
    required this.highlightColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: child,
    );
  }
}
