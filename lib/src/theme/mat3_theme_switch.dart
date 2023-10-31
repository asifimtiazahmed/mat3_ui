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
      return isLightMode ? Mat3Colors.primary[95]! : Mat3Colors.primary[90]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? Mat3Colors.primary[90]! : Mat3Colors.primary[30]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[70]! : Mat3Colors.neutral[20]!;
    } else {
      return isLightMode ? Mat3Colors.neutral : Mat3Colors.neutral[30]!;
    }
  }

  static Color _getThumpColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.primary[80]! : Mat3Colors.primary[70]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[90]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[90]! : Mat3Colors.neutral[40]!;
    } else {
      return isLightMode ? Mat3Colors.white : Mat3Colors.neutral[90]!;
    }
  }
}
