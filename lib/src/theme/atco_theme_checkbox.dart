import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoCheckboxTheme {

  /// Light theme configuration
  static final CheckboxThemeData lightTheme = CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
    checkColor: MaterialStateColor.resolveWith((states) => _getCheckColor(states, true)),
  );

  /// Dark theme configuration
  static final CheckboxThemeData darkTheme = CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
    checkColor: MaterialStateColor.resolveWith((states) => _getCheckColor(states, false)),
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[50]! : AtcoColors.neutral[40]!;
    } else {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!;
    }
  }

  static Color _getCheckColor(Set<MaterialState> states, bool isLightMode) {
    return isLightMode ? AtcoColors.white : AtcoColors.black;
  }
}
