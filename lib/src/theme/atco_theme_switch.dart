import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoSwitchTheme {

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
      return isLightMode ? AtcoColors.primary[95]! : AtcoColors.primary[90]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? AtcoColors.primary[90]! : AtcoColors.primary[30]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[70]! : AtcoColors.neutral[20]!;
    } else {
      return isLightMode ? AtcoColors.neutral : AtcoColors.neutral[30]!;
    }
  }

  static Color _getThumpColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.primary[80]! : AtcoColors.primary[70]!;
    } else if (states.contains(MaterialState.selected)) {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[90]!;
    } else if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[90]! : AtcoColors.neutral[40]!;
    } else {
      return isLightMode ? AtcoColors.white : AtcoColors.neutral[90]!;
    }
  }
}
