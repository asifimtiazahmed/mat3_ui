import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeBottomNavBar {

  /// Light theme configuration
  static final BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    backgroundColor: Mat3Colors.white,
    selectedItemColor: Mat3Colors.primary,
    unselectedItemColor: Mat3Colors.neutral[10],
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );

  /// Dark theme configuration
  static final BottomNavigationBarThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: Mat3Colors.primary[40],
    selectedItemColor: Mat3Colors.lavenderWeb[100],
    unselectedItemColor: Mat3Colors.primary[80],
  );
}
