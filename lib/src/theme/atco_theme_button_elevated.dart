import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoElevatedButtonTheme {

  /// Light theme configuration
  static final ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.lightTheme.labelLarge),
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
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.darkTheme.labelLarge),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, false)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  static Color _getBackgroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[90]! : AtcoColors.neutral[20]!;
    }
    return AtcoColors.primary;
  }

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[40]! : AtcoColors.neutral[60]!;
    } else {
      return AtcoColors.white;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[80]! : AtcoColors.neutral[20]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? AtcoColors.primary[40]! : AtcoColors.primary[30]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary[30]! : AtcoColors.primary;
    } else {
      return AtcoColors.primary;
    }
  }

  static EdgeInsetsGeometry _getPadding(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 24);
  }
}
