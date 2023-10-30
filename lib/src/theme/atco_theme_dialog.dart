import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:atco_ui/src/utils/borders.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoDialogTheme {
  /// Light theme configuration
  static final DialogTheme lightTheme = DialogTheme(
    surfaceTintColor: Colors.transparent,
    backgroundColor: AtcoColors.neutral[99],
    titleTextStyle: AtcoThemeText.lightTheme.titleLarge,
    contentTextStyle: AtcoThemeText.lightTheme.bodySmall,
    shape: rectWithRadius4,
  );

  /// Dark theme configuration
  static final DialogTheme darkTheme = lightTheme.copyWith(
    surfaceTintColor: Colors.transparent,
    backgroundColor: AtcoColors.neutralDM[30],
    titleTextStyle: AtcoThemeText.lightTheme.titleLarge,
    contentTextStyle: AtcoThemeText.lightTheme.bodySmall,
    shape: rectWithRadius4,
  );
}
