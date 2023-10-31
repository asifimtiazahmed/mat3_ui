import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeTabBar {

  /// Light theme configuration
  static final TabBarTheme lightTheme = TabBarTheme(
    labelColor: Mat3Colors.white,
    unselectedLabelColor: Mat3Colors.neutral[80],
    labelStyle: Mat3ThemeText.lightTheme.titleLarge,
    unselectedLabelStyle: Mat3ThemeText.lightTheme.titleMedium,
    indicator: _getDecoration(),
  );

  /// Dark theme configuration
  static final TabBarTheme darkTheme = TabBarTheme(
    labelColor: Mat3Colors.white,
    unselectedLabelColor: Mat3Colors.neutral[60],
    labelStyle: Mat3ThemeText.darkTheme.titleLarge,
    unselectedLabelStyle: Mat3ThemeText.darkTheme.titleMedium,
    indicator: _getDecoration(),
  );

  static Decoration _getDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Mat3Colors.secondary[80]!,
          width: 4,
        ),
      ),
    );
  }
}
