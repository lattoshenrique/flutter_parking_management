import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark;
}

abstract class ThemeFactory {
  static ThemeData buildFor(ThemeType type) {
    return switch (type) {
      ThemeType.light => _buildLight(),
      ThemeType.dark => _buildDark(),
    };
  }
}

ThemeData _buildLight() {
  return ThemeData.from(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
    textTheme: Typography.material2021().black,
    useMaterial3: true,
  );
}

ThemeData _buildDark() {
  return ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    textTheme: Typography.material2021().black,
    useMaterial3: true,
  );
}