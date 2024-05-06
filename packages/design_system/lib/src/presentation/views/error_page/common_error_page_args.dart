import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';

part 'common_error_page_args.freezed.dart';

@freezedNoHelpers
sealed class CommonErrorPageArgs with _$CommonErrorPageArgs {
  const factory CommonErrorPageArgs({
    String? title,
    String? message,
    Widget? leading,
    VoidCallback? onLeadingPressed,
    String? primaryButtonText,
    VoidCallback? onPrimaryButtonPressed,
    String? secondaryButtonText,
    VoidCallback? onSecondaryButtonPressed,
  }) = _CommonErrorPageArgs;
}
