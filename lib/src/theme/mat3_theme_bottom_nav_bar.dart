import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeBottomNavBar {

  /// Light theme configuration
  static final BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    backgroundColor: Mat3Colors.roseQuartz[60],
    selectedItemColor: Mat3Colors.mistyRose,
    unselectedItemColor: Mat3Colors.primary,
    showUnselectedLabels: true,
    unselectedLabelStyle: Mat3ThemeText.lightTheme.bodySmall,
    type: BottomNavigationBarType.fixed,
  );

  /// Dark theme configuration
  static final BottomNavigationBarThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: Mat3Colors.primary[40],
    selectedItemColor: Mat3Colors.lavenderWeb[100],
    unselectedItemColor: Mat3Colors.primary[80],
    unselectedLabelStyle: Mat3ThemeText.darkTheme.bodySmall,
  );
}
