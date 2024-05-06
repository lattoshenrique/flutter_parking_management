import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../texts/texts.dart';

part 'primary_button.dart';
part 'text_button.dart';

abstract class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isLoading;

  const AppButton._({
    super.key,
    this.onTap,
    this.isLoading = false,
  });

  const factory AppButton.primary({
    VoidCallback? onTap,
    required String text,
    bool extended,
    bool isLoading,
  }) = _PrimaryButton;

  const factory AppButton.text({
    VoidCallback? onTap,
    required String text,
    bool extended,
    bool isLoading,
  }) = _TextButton;
}
