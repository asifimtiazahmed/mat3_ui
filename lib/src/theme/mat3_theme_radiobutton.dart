import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3RadioButtonTheme {

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
      return isLightMode ? Mat3Colors.seaGreen : Mat3Colors.seaGreen[40]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? Mat3Colors.jonquil : Mat3Colors.jonquil[80]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.seaGreen : Mat3Colors.seaGreen[40]!;
    } else {
      return isLightMode ? Mat3Colors.seaGreen[30]! : Mat3Colors.seaGreen[90]!;
    }
  }
}
