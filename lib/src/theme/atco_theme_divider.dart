import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoDividerTheme {
  AtcoDividerTheme._();

  /// Light theme configuration
  static DividerThemeData lightTheme = DividerThemeData(
    color: AtcoColors.neutral[80],
    space: 0,
    thickness: 1,
    indent: 0,
    endIndent: 0,
  );

  /// Dark theme configuration
  static DividerThemeData darkTheme = lightTheme.copyWith(color: AtcoColors.neutral);
}
