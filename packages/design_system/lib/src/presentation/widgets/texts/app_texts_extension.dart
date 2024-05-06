import 'package:flutter/material.dart';

import '../../../../design_system.dart';

extension AppTexts on Text {
  Text pageTitle1(BuildContext context) {
    return copyWith(context.textTheme.headlineLarge);
  }

  Text pageSubTitle1(BuildContext context) {
    return copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.textTheme.titleLarge?.color?.withOpacity(.6),
      ),
    );
  }

  Text pageSubTitle1Inverted(BuildContext context) {
    return copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.onInverseSurface.withOpacity(.6),
      ),
    );
  }

  Text cardTitle1(BuildContext context) {
    return copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text cardTitle1Inversed(BuildContext context) {
    return copyWith(
      context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.onInverseSurface,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text cardSubTitle1(BuildContext context) {
    return copyWith(
      context.textTheme.titleMedium?.copyWith(
        color: context.colorScheme.onBackground.withOpacity(.7),
      ),
    );
  }

  Text cardBody1(BuildContext context) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        color: context.colorScheme.onBackground.withOpacity(.7),
      ),
    );
  }

  Text cardBody1Bold(BuildContext context) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        color: context.colorScheme.onBackground.withOpacity(.7),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text cardBody2(BuildContext context) {
    return copyWith(
      context.textTheme.bodyMedium?.copyWith(
        color: context.colorScheme.onBackground.withOpacity(.7),
      ),
    );
  }

  Text cardBody2Inverted(BuildContext context) {
    return copyWith(
      context.textTheme.bodyMedium?.copyWith(
        color: context.colorScheme.onInverseSurface.withOpacity(.7),
      ),
    );
  }

  Text primaryButton(BuildContext context) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
        color: context.colorScheme.onPrimary,
      ),
    );
  }

  Text textButton(BuildContext context) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        letterSpacing: 1,
        color: context.colorScheme.onBackground,
      ),
    );
  }

  Text textButtonInverted(BuildContext context) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        letterSpacing: 1,
        color: context.colorScheme.onInverseSurface,
      ),
    );
  }

  Text snackbar(BuildContext context, SnackbarType type) {
    return copyWith(
      context.textTheme.bodyLarge?.copyWith(
        color: switch (type) {
          SnackbarType.error => context.colorScheme.onError,
          SnackbarType.info => context.colorScheme.onSecondaryContainer,
          SnackbarType.success => context.colorScheme.onPrimary,
        },
      ),
    );
  }

  Text copyWith(TextStyle? textStyle) {
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
