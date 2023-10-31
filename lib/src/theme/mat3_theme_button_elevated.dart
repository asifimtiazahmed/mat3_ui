import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ElevatedButtonTheme {

  /// Light theme configuration
  static final ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.lightTheme.labelLarge),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, true)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, true)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, true)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  /// Dark theme configuration
  static final ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.darkTheme.labelLarge),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, false)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  static Color _getBackgroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[90]! : Mat3Colors.neutral[20]!;
    }
    return Mat3Colors.primary;
  }

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[40]! : Mat3Colors.neutral[60]!;
    } else {
      return Mat3Colors.white;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[80]! : Mat3Colors.neutral[20]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? Mat3Colors.primary[40]! : Mat3Colors.primary[30]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[30]! : Mat3Colors.primary;
    } else {
      return Mat3Colors.primary;
    }
  }

  static EdgeInsetsGeometry _getPadding(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 24);
  }
}
