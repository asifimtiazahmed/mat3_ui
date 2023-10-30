import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoInputDecoration {
  AtcoInputDecoration._();

  /// Light theme configuration
  static final InputDecorationTheme lightTheme = InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
    border: const UnderlineInputBorder(),
    labelStyle: AtcoThemeText.lightTheme.titleMedium?.copyWith(color: AtcoColors.neutral),
    floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) => _getFloatingLabelColor(states, true)),
    helperStyle: AtcoThemeText.lightTheme.labelMedium?.copyWith(color: AtcoColors.neutral),
    hintStyle: AtcoThemeText.lightTheme.titleMedium?.copyWith(color: AtcoColors.neutral),
    errorStyle: AtcoThemeText.lightTheme.labelMedium?.copyWith(color: AtcoColors.error),
    counterStyle: AtcoThemeText.lightTheme.labelMedium?.copyWith(color: AtcoColors.neutral),
    iconColor: MaterialStateColor.resolveWith((states) => _getIconColor(states, true)),
    enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.neutral)),
    errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.error)),
    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.primary)),
    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.neutral[20]!)),
  );

  /// Dark theme configuration
  static final InputDecorationTheme darkTheme = InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
    border: const UnderlineInputBorder(),
    labelStyle: AtcoThemeText.darkTheme.titleMedium?.copyWith(color: AtcoColors.neutral[70]),
    floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) => _getFloatingLabelColor(states, false)),
    helperStyle: AtcoThemeText.darkTheme.labelMedium?.copyWith(color: AtcoColors.neutral[70]),
    hintStyle: AtcoThemeText.darkTheme.titleMedium?.copyWith(color: AtcoColors.neutral[80]),
    errorStyle: AtcoThemeText.lightTheme.labelMedium?.copyWith(color: AtcoColors.errorDM),
    counterStyle: AtcoThemeText.darkTheme.labelMedium?.copyWith(color: AtcoColors.neutral[70]),
    iconColor: MaterialStateColor.resolveWith((states) => _getIconColor(states, false)),
    enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.neutral)),
    errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.error)),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.primary[80]!)),
    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AtcoColors.neutral[99]!)),
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[90]! : AtcoColors.neutralDM[90]!;
    } else if (states.contains(MaterialState.hovered)) {
      return isLightMode ? AtcoColors.neutral[95]! : AtcoColors.neutralDM[99]!;
    } else {
      return AtcoColors.transparent;
    }
  }

  static TextStyle _getFloatingLabelColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.error)) {
      return AtcoThemeText.lightTheme.labelSmall!.copyWith(color: isLightMode ? AtcoColors.error : AtcoColors.errorDM);
    } else if (states.contains(MaterialState.focused)) {
      return AtcoThemeText.lightTheme.labelSmall!.copyWith(
        color: isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!,
      );
    }
    return AtcoThemeText.lightTheme.labelSmall!.copyWith(
      color: isLightMode ? AtcoColors.neutral : AtcoColors.neutral[70]!,
    );
  }

  static Color _getIconColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral : AtcoColors.neutralDM[60]!;
    }
    return isLightMode ? AtcoColors.neutral[10]! : AtcoColors.neutral[90]!;
  }
}
