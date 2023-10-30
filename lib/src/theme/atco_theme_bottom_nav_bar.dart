import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoThemeBottomNavBar {

  /// Light theme configuration
  static final BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    backgroundColor: AtcoColors.white,
    selectedItemColor: AtcoColors.primary,
    unselectedItemColor: AtcoColors.neutral[10],
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );

  /// Dark theme configuration
  static final BottomNavigationBarThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: AtcoColors.neutralDM[80],
    selectedItemColor: AtcoColors.primary[80],
    unselectedItemColor: AtcoColors.white,
  );
}
