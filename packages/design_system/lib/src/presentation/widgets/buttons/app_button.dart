import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../texts/texts.dart';

part 'primary_button.dart';
part 'text_button.dart';

abstract class AppButton extends StatelessWidget {
  final VoidCallback? onTap;

  const AppButton._({
    super.key,
    this.onTap,
  });

  const factory AppButton.primary({
    VoidCallback? onTap,
    required String text,
    bool extended,
  }) = _PrimaryButton;

  const factory AppButton.text({
    VoidCallback? onTap,
    required String text,
    bool extended,
  }) = _TextButton;
}
