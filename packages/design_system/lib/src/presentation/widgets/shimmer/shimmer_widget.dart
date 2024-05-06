import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class ShimmerWidget extends StatelessWidget {
  final Color? baseColor;
  final Color? highlightColor;
  final Widget child;

  const ShimmerWidget({
    super.key,
    this.baseColor,
    this.highlightColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? context.colorScheme.secondaryContainer,
      highlightColor: highlightColor ??
          context.colorScheme.secondaryContainer.withOpacity(.5),
      child: child,
    );
  }
}
