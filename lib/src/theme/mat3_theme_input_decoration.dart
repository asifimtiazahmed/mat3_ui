import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3InputDecoration {
  Mat3InputDecoration._();

  /// Light theme configuration
  static final InputDecorationTheme lightTheme = InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, true)),
    border: const UnderlineInputBorder(),
    labelStyle: Mat3ThemeText.lightTheme.titleMedium?.copyWith(color: Mat3Colors.neutral),
    floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) => _getFloatingLabelColor(states, true)),
    helperStyle: Mat3ThemeText.lightTheme.labelMedium?.copyWith(color: Mat3Colors.neutral),
    hintStyle: Mat3ThemeText.lightTheme.titleMedium?.copyWith(color: Mat3Colors.neutral),
    errorStyle: Mat3ThemeText.lightTheme.labelMedium?.copyWith(color: Mat3Colors.error),
    counterStyle: Mat3ThemeText.lightTheme.labelMedium?.copyWith(color: Mat3Colors.neutral),
    iconColor: MaterialStateColor.resolveWith((states) => _getIconColor(states, true)),
    enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.neutral)),
    errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.error)),
    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.primary)),
    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.neutral[20]!)),
  );

  /// Dark theme configuration
  static final InputDecorationTheme darkTheme = InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) => _getFillColor(states, false)),
    border: const UnderlineInputBorder(),
    labelStyle: Mat3ThemeText.darkTheme.titleMedium?.copyWith(color: Mat3Colors.neutral[70]),
    floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) => _getFloatingLabelColor(states, false)),
    helperStyle: Mat3ThemeText.darkTheme.labelMedium?.copyWith(color: Mat3Colors.neutral[70]),
    hintStyle: Mat3ThemeText.darkTheme.titleMedium?.copyWith(color: Mat3Colors.neutral[80]),
    errorStyle: Mat3ThemeText.lightTheme.labelMedium?.copyWith(color: Mat3Colors.errorDM),
    counterStyle: Mat3ThemeText.darkTheme.labelMedium?.copyWith(color: Mat3Colors.neutral[70]),
    iconColor: MaterialStateColor.resolveWith((states) => _getIconColor(states, false)),
    enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.neutral)),
    errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.error)),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.primary[80]!)),
    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Mat3Colors.neutral[99]!)),
  );

  static Color _getFillColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[90]! : Mat3Colors.neutralDM[90]!;
    } else if (states.contains(MaterialState.hovered)) {
      return isLightMode ? Mat3Colors.neutral[95]! : Mat3Colors.neutralDM[99]!;
    } else {
      return Mat3Colors.transparent;
    }
  }

  static TextStyle _getFloatingLabelColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.error)) {
      return Mat3ThemeText.lightTheme.labelSmall!.copyWith(color: isLightMode ? Mat3Colors.error : Mat3Colors.errorDM);
    } else if (states.contains(MaterialState.focused)) {
      return Mat3ThemeText.lightTheme.labelSmall!.copyWith(
        color: isLightMode ? Mat3Colors.primary : Mat3Colors.primary[80]!,
      );
    }
    return Mat3ThemeText.lightTheme.labelSmall!.copyWith(
      color: isLightMode ? Mat3Colors.neutral : Mat3Colors.neutral[70]!,
    );
  }

  static Color _getIconColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral : Mat3Colors.neutralDM[60]!;
    }
    return isLightMode ? Mat3Colors.neutral[10]! : Mat3Colors.neutral[90]!;
  }
}
