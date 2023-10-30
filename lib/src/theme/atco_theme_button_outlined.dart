import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoOutlinedButtonTheme {

  /// Light theme configuration
  static final OutlinedButtonThemeData lightTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.lightTheme.labelLarge),
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
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.darkTheme.labelLarge),
      side: MaterialStateProperty.resolveWith<BorderSide?>((states) => _getBorderSide(states, false)),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getBackgroundColor(states, false)),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(_getPadding),
    ),
  );

  static BorderSide _getBorderSide(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? const BorderSide(color: AtcoColors.neutral) : BorderSide(color: AtcoColors.neutral[40]!);
    }
    return isLightMode ? const BorderSide(color: AtcoColors.primary) : BorderSide(color: AtcoColors.primary[80]!);
  }

  static Color _getBackgroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return AtcoColors.transparent;
    } else if (states.contains(MaterialState.hovered)) {
      return AtcoColors.primary[95]!;
    } else if (states.contains(MaterialState.focused)) {
      return AtcoColors.primary[90]!;
    } else if (states.contains(MaterialState.pressed)) {
      return AtcoColors.transparent;
    } else {
      return AtcoColors.transparent;
    }
  }

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[50]! : AtcoColors.neutral[40]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return AtcoColors.primary[50]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!;
    } else {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return AtcoColors.primary[90]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary[90]! : AtcoColors.primary[70]!;
    } else {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[90]!;
    }
  }

  static EdgeInsetsGeometry _getPadding(Set<MaterialState> states) {
    return const EdgeInsets.symmetric(horizontal: 24);
  }
}
