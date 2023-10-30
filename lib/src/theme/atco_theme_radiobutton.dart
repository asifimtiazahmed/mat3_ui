import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoRadioButtonTheme {

  /// Light theme configuration
  static final RadioThemeData lightTheme = RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
  );

  /// Dark theme configuration
  static final RadioThemeData darkTheme = RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral : AtcoColors.neutral[40]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral : AtcoColors.neutral[40]!;
    } else {
      return isLightMode ? AtcoColors.neutral[30]! : AtcoColors.neutral[90]!;
    }
  }
}
