import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoToggleButtonsTheme {

  /// Light theme configuration
  static final ToggleButtonsThemeData lightTheme = ToggleButtonsThemeData(
      textStyle: AtcoThemeText.lightTheme.labelMedium,
      color: AtcoColors.neutral[30],
      borderColor: AtcoColors.neutral,
      disabledColor: AtcoColors.neutral[80],
      disabledBorderColor: AtcoColors.neutral[80],
      selectedColor: AtcoColors.primary,
      selectedBorderColor: AtcoColors.primary,
      fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
      splashColor: AtcoColors.primary[80],
      borderRadius: BorderRadius.zero,
  );

  /// Dark theme configuration
  static final ToggleButtonsThemeData darkTheme = ToggleButtonsThemeData(
    textStyle: AtcoThemeText.darkTheme.labelMedium,
    color: AtcoColors.primary[80],
    borderColor: AtcoColors.primary[80],
    disabledColor: AtcoColors.neutral[40],
    disabledBorderColor: AtcoColors.neutral[40],
    selectedColor: AtcoColors.primary[80],
    selectedBorderColor: AtcoColors.primary[80],
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
    splashColor: AtcoColors.neutral[80],
    borderRadius: BorderRadius.zero,
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return AtcoColors.transparent;
    } else if (states.contains(MaterialState.selected) || states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary[95]! : AtcoColors.primary[10]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? AtcoColors.primary[90]! : AtcoColors.primary[20]!;
    } else {
      return isLightMode ? AtcoColors.neutral[95]! : AtcoColors.neutralDM[30]!;
    }
  }
}
