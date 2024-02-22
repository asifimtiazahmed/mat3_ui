import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeBottomNavBar {

  /// Light theme configuration
  static final BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    backgroundColor: Mat3Colors.white,
    selectedItemColor: Mat3Colors.jonquil,
    unselectedItemColor: Mat3Colors.seaGreen[10],
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );

  /// Dark theme configuration
  static final BottomNavigationBarThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: Mat3Colors.linen[80],
    selectedItemColor: Mat3Colors.jonquil[80],
    unselectedItemColor: Mat3Colors.white,
  );
}
