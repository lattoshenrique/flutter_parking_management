import 'package:flutter/material.dart';

import '../../../../design_system.dart';

extension AppTexts on Text {
  Text pageTitle1(BuildContext context) {
    return _copyWith(context.textTheme.headlineLarge);
  }

  Text pageSubTitle1(BuildContext context) {
    return _copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.textTheme.titleLarge?.color?.withOpacity(.6),
      ),
    );
  }

  Text cardTitle1(BuildContext context) {
    return _copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text cardBody1(BuildContext context) {
    return _copyWith(
      context.textTheme.bodyMedium?.copyWith(
        color: context.colorScheme.onBackground.withOpacity(.7),
      ),
    );
  }

  Text primaryButton(BuildContext context) {
    return _copyWith(
      context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
        color: context.colorScheme.onPrimary,
      ),
    );
  }

  Text textButton(BuildContext context) {
    return _copyWith(
      context.textTheme.bodyLarge?.copyWith(
        letterSpacing: 1,
        color: context.colorScheme.onBackground,
      ),
    );
  }

  Text snackbar(BuildContext context, SnackbarType type) {
    return _copyWith(
      context.textTheme.bodyLarge?.copyWith(
        color: switch (type) {
          SnackbarType.error => context.colorScheme.onError,
          SnackbarType.info => context.colorScheme.onSecondaryContainer,
          SnackbarType.success => context.colorScheme.onPrimary,
        },
      ),
    );
  }

  Text _copyWith(TextStyle? textStyle) {
    return Text(
      data!,
      key: key,
      strutStyle: strutStyle,
      style: textStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      textHeightBehavior: textHeightBehavior,
      textScaler: textScaler,
      textWidthBasis: textWidthBasis,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
