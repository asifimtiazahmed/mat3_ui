import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoThemeAppBar {
  AtcoThemeAppBar._();

  /// Light theme configuration
  static final AppBarTheme lightTheme = AppBarTheme(
    backgroundColor: AtcoColors.primary[50],
    actionsIconTheme: const IconThemeData(color: AtcoColors.white),
    iconTheme: const IconThemeData(color: AtcoColors.error),
    titleTextStyle: AtcoThemeText.lightTheme.titleLarge?.copyWith(
      color: AtcoColors.white,
    ),
    toolbarTextStyle: AtcoThemeText.lightTheme.titleSmall,
    centerTitle: false,
  );

  /// Dark theme configuration
  static final AppBarTheme darkTheme = lightTheme;
}
