import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../buttons/buttons.dart';

class BottomNavigatorActionButtons extends StatelessWidget {
  final AppButton? primaryButton;
  final AppButton? secondaryButton;

  const BottomNavigatorActionButtons({
    super.key,
    this.primaryButton,
    this.secondaryButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: context.screenWidth,
          height: const Dimension(24.5).height -
              MediaQuery.paddingOf(context).bottom,
          padding: Dimension.sm.paddingAll,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                context.colorScheme.background,
                context.colorScheme.background.withOpacity(0.0),
              ],
              stops: const [0.4, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: Dimension.xxl.height,
          left: Dimension.xl.width,
          right: Dimension.xl.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (primaryButton != null) primaryButton!,
              if (secondaryButton != null) ...[
                if (primaryButton != null) Dimension.sm.vertical,
                secondaryButton!,
              ],
            ],
          ),
        ),
      ],
    );
  }
}
