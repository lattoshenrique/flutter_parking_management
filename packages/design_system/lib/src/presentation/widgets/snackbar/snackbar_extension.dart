import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../texts/texts.dart';

enum SnackbarType {
  error,
  info,
  success,
}

extension SnackbarExtension on BuildContext {
  void showSnackbar(String message, {required SnackbarType type}) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          padding: EdgeInsets.symmetric(
            vertical: Dimension.md.height,
            horizontal: Dimension.sm.width,
          ),
          backgroundColor: switch (type) {
            SnackbarType.error => colorScheme.error,
            SnackbarType.info => colorScheme.secondaryContainer,
            SnackbarType.success => colorScheme.primary,
          },
          content: Text(message).snackbar(this, type),
        ),
      );
}
