import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

extension BottomSheetExtension on BuildContext {
  void showBottomSheet({required Widget child}) => showModalBottomSheet(
        context: this,
        builder: (context) => Container(
          width: context.screenWidth,
          padding: Dimension.sm.paddingAll,
          decoration: BoxDecoration(
            color: context.colorScheme.inverseSurface,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.lg.value),
              topRight: Radius.circular(Dimension.lg.value),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: Nav.pop,
                icon: Icon(
                  Icons.close,
                  size: 20.fontSize,
                  color: context.colorScheme.surface,
                ),
              ),
              Dimension.md.vertical,
              Expanded(child: child),
            ],
          ),
        ),
      );
}
