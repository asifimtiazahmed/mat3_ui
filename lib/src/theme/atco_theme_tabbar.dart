import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoThemeTabBar {

  /// Light theme configuration
  static final TabBarTheme lightTheme = TabBarTheme(
    labelColor: AtcoColors.white,
    unselectedLabelColor: AtcoColors.neutral[80],
    labelStyle: AtcoThemeText.lightTheme.titleLarge,
    unselectedLabelStyle: AtcoThemeText.lightTheme.titleMedium,
    indicator: _getDecoration(),
  );

  /// Dark theme configuration
  static final TabBarTheme darkTheme = TabBarTheme(
    labelColor: AtcoColors.white,
    unselectedLabelColor: AtcoColors.neutral[60],
    labelStyle: AtcoThemeText.darkTheme.titleLarge,
    unselectedLabelStyle: AtcoThemeText.darkTheme.titleMedium,
    indicator: _getDecoration(),
  );

  static Decoration _getDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AtcoColors.secondary[80]!,
          width: 4,
        ),
      ),
    );
  }
}
