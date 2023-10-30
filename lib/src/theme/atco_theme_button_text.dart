import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoTextButtonTheme {

  /// Light theme configuration
  static final TextButtonThemeData lightTheme = TextButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.resolveWith<Size?>((states) => const Size.fromHeight(48)),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>((_) => EdgeInsets.zero),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.lightTheme.labelLarge),
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
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>((_) => AtcoThemeText.darkTheme.labelLarge),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) => _getForegroundColor(states, false)),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) => _getOverlayColor(states, false)),
      // shape: MaterialStateProperty.resolveWith<OutlinedBorder?>((state) => _getShape(state, false)),
    ),
  );

  static Color _getForegroundColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.disabled)) {
      return isLightMode ? AtcoColors.neutral[50]! : AtcoColors.neutral[40]!;
    } else if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return isLightMode ? AtcoColors.primary[20]! : AtcoColors.primary[95]!;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary[30]! : AtcoColors.primary[80]!;
    } else {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[80]!;
    }
  }

  static Color _getOverlayColor(Set<MaterialState> states, bool isLightMode) {
    if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
      return AtcoColors.transparent;
    } else if (states.contains(MaterialState.pressed)) {
      return isLightMode ? AtcoColors.primary[90]! : AtcoColors.primary[20]!;
    } else {
      return isLightMode ? AtcoColors.primary : AtcoColors.primary[90]!;
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
