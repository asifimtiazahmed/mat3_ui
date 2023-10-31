import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3OutlinedButtonTheme {

  /// Light theme configuration
  static final OutlinedButtonThemeData lightTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.lightTheme.labelLarge),
      side: MaterialStateProperty.resolveWith<BorderSide?>((states) => _getBorderSide(states, true)),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, true)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, true)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, true)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  /// Dark theme configuration
  static final OutlinedButtonThemeData darkTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.darkTheme.labelLarge),
      side: MaterialStateProperty.resolveWith<BorderSide?>((states) => _getBorderSide(states, false)),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, false)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  static BorderSide _getBorderSide(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? const BorderSide(color: Mat3Colors.neutral) : BorderSide(color: Mat3Colors.neutral[40]!);
    }
    return isLightMode ? const BorderSide(color: Mat3Colors.primary) : BorderSide(color: Mat3Colors.primary[80]!);
  }

  static Color _getBackgroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return Mat3Colors.transparent;
    } else if (states.contains(MaterialState.hovered)) {
      return Mat3Colors.primary[95]!;
    } else if (states.contains(MaterialState.focused)) {
      return Mat3Colors.primary[90]!;
    } else if (states.contains(MaterialState.pressed)) {
      return Mat3Colors.transparent;
    } else {
      return Mat3Colors.transparent;
    }
  }

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[50]! : Mat3Colors.neutral[40]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return Mat3Colors.primary[50]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[80]!;
    } else {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[80]!;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return Mat3Colors.primary[90]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[90]! : Mat3Colors.primary[70]!;
    } else {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[90]!;
    }
  }

  static EdgeInsetsGeometry _getPadding(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 24);
  }
}
