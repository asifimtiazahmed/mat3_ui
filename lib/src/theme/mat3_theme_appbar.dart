import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeAppBar {
  Mat3ThemeAppBar._();

  /// Light theme configuration
  static final AppBarTheme lightTheme = AppBarTheme(
    backgroundColor: Mat3Colors.jonquil[50],
    actionsIconTheme: const IconThemeData(color: Mat3Colors.white),
    iconTheme: const IconThemeData(color: Mat3Colors.error),
    titleTextStyle: Mat3ThemeText.lightTheme.titleLarge?.copyWith(
      color: Mat3Colors.white,
    ),
    toolbarTextStyle: Mat3ThemeText.lightTheme.titleSmall,
    centerTitle: false,
  );

  /// Dark theme configuration
  static final AppBarTheme darkTheme = lightTheme;
}
