import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3DividerTheme {
  Mat3DividerTheme._();

  /// Light theme configuration
  static DividerThemeData lightTheme = DividerThemeData(
    color: Mat3Colors.neutral[80],
    space: 0,
    thickness: 1,
    indent: 0,
    endIndent: 0,
  );

  /// Dark theme configuration
  static DividerThemeData darkTheme = lightTheme.copyWith(color: Mat3Colors.neutral);
}
