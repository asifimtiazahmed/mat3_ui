import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:material_ui/src/utils/borders.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3DialogTheme {
  /// Light theme configuration
  static final DialogTheme lightTheme = DialogTheme(
    surfaceTintColor: Colors.transparent,
    backgroundColor: Mat3Colors.neutral[99],
    titleTextStyle: Mat3ThemeText.lightTheme.titleLarge,
    contentTextStyle: Mat3ThemeText.lightTheme.bodySmall,
    shape: rectWithRadius4,
  );

  /// Dark theme configuration
  static final DialogTheme darkTheme = lightTheme.copyWith(
    surfaceTintColor: Colors.transparent,
    backgroundColor: Mat3Colors.neutralDM[30],
    titleTextStyle: Mat3ThemeText.lightTheme.titleLarge,
    contentTextStyle: Mat3ThemeText.lightTheme.bodySmall,
    shape: rectWithRadius4,
  );
}
