import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class Mat3ThemeExpansionTile {

  /// Light theme configuration
  static const ExpansionTileThemeData lightTheme = ExpansionTileThemeData(
    backgroundColor: Mat3Colors.seaGreen,
    textColor: Mat3Colors.black,
  );

  /// Dark theme configuration
  static final ExpansionTileThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: Mat3Colors.linen,
    textColor: Mat3Colors.seaGreen[80],
  );
}
