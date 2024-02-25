import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3IconButtonTheme {

  /// Light theme configuration
  static IconButtonThemeData lightTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, true)),
    ),
  );
  /// Dark theme configuration
  static IconButtonThemeData darkTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
    ),
  );

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[50]! : Mat3Colors.neutral[40]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? Mat3Colors.primary[20]! : Mat3Colors.primary[80]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[30]! : Mat3Colors.primary[95]!;
    } else {
      return  Mat3Colors.lavenderWeb; // changes Appbar Action icons
    }
  }
}
