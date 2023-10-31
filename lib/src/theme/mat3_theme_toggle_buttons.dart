import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ToggleButtonsTheme {

  /// Light theme configuration
  static final ToggleButtonsThemeData lightTheme = ToggleButtonsThemeData(
      textStyle: Mat3ThemeText.lightTheme.labelMedium,
      color: Mat3Colors.neutral[30],
      borderColor: Mat3Colors.neutral,
      disabledColor: Mat3Colors.neutral[80],
      disabledBorderColor: Mat3Colors.neutral[80],
      selectedColor: Mat3Colors.primary,
      selectedBorderColor: Mat3Colors.primary,
      fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
      splashColor: Mat3Colors.primary[80],
      borderRadius: BorderRadius.zero,
  );

  /// Dark theme configuration
  static final ToggleButtonsThemeData darkTheme = ToggleButtonsThemeData(
    textStyle: Mat3ThemeText.darkTheme.labelMedium,
    color: Mat3Colors.primary[80],
    borderColor: Mat3Colors.primary[80],
    disabledColor: Mat3Colors.neutral[40],
    disabledBorderColor: Mat3Colors.neutral[40],
    selectedColor: Mat3Colors.primary[80],
    selectedBorderColor: Mat3Colors.primary[80],
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
    splashColor: Mat3Colors.neutral[80],
    borderRadius: BorderRadius.zero,
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return Mat3Colors.transparent;
    } else if (states.contains(MaterialState.selected) || states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[95]! : Mat3Colors.primary[10]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? Mat3Colors.primary[90]! : Mat3Colors.primary[20]!;
    } else {
      return isLightMode ? Mat3Colors.neutral[95]! : Mat3Colors.neutralDM[30]!;
    }
  }
}
