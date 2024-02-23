import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3TextButtonTheme {

  /// Light theme configuration
  static final TextButtonThemeData lightTheme = TextButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>((_) => EdgeInsets.zero),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.lightTheme.labelLarge),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((state) => _getForegroundColor(state, true)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((state) => _getOverlayColor(state, true)),
      // shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((state) => _getShape(state, true)),
    ),
  );

  /// Dark theme configuration
  static final TextButtonThemeData darkTheme = TextButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>((_) => EdgeInsets.zero),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => Mat3ThemeText.darkTheme.labelLarge),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      // shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((state) => _getShape(state, false)),
    ),
  );

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? Mat3Colors.neutral[50]! : Mat3Colors.neutral[40]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? Mat3Colors.primary[20]! : Mat3Colors.primary[80]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[30]! : Mat3Colors.primary[95]!;
    } else {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[80]!;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return Mat3Colors.transparent;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? Mat3Colors.primary[90]! : Mat3Colors.primary[40]!;
    } else {
      return isLightMode ? Mat3Colors.primary : Mat3Colors.primary[90]!;
    }
  }

  static OutlinedBorder? _getShape(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return const StadiumBorder(
        side: BorderSide(color: Colors.blue),
      );
    }
    return null;
  }
}
