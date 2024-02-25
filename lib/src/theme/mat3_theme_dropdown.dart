import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_ui/src/theme/mat3_theme_input_decoration.dart';

/// Theme Configuration for light and Dark themes.
class Mat3DropdownTheme {

  static final DropdownMenuThemeData lighTheme = DropdownMenuThemeData(
    inputDecorationTheme: Mat3InputDecoration.lightTheme,
  );
}