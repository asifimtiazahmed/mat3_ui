import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3CheckboxTheme {

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
      return isLightMode ? Mat3Colors.neutral[50]! : Mat3Colors.neutral[40]!;
    } else {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[80]!;
    }
  }

  static Color _getCheckColor(Set<MaterialState> states, bool isLightMode) {
    return isLightMode ? Mat3Colors.white : Mat3Colors.black;
  }
}
