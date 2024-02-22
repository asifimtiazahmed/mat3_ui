import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3SwitchTheme {

  /// Light theme configuration
  static final SwitchThemeData lightTheme = SwitchThemeData(
    trackColor: MaterialStateColor.resolveWith((states) => _getTrackColor(states, true)),
    thumbColor: MaterialStateColor.resolveWith((states) => _getThumpColor(states, true)),
  );

  /// Dark theme configuration
  static final SwitchThemeData darkTheme = SwitchThemeData(
    trackColor: MaterialStateColor.resolveWith((states) => _getTrackColor(states, false)),
    thumbColor: MaterialStateColor.resolveWith((states) => _getThumpColor(states, false)),
  );

  static Color _getTrackColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.jonquil[95]! : Mat3Colors.jonquil[90]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? Mat3Colors.jonquil[90]! : Mat3Colors.jonquil[30]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.seaGreen[70]! : Mat3Colors.seaGreen[20]!;
    } else {
      return isLightMode ? Mat3Colors.seaGreen : Mat3Colors.seaGreen[30]!;
    }
  }

  static Color _getThumpColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.jonquil[80]! : Mat3Colors.jonquil[70]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? Mat3Colors.jonquil : Mat3Colors.jonquil[90]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.seaGreen[90]! : Mat3Colors.seaGreen[40]!;
    } else {
      return isLightMode ? Mat3Colors.white : Mat3Colors.seaGreen[90]!;
    }
  }
}
