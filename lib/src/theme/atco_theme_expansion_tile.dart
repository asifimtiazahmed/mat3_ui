import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoThemeExpansionTile {

  /// Light theme configuration
  static const ExpansionTileThemeData lightTheme = ExpansionTileThemeData(
    backgroundColor: AtcoColors.neutral,
    textColor: AtcoColors.black,
  );

  /// Dark theme configuration
  static final ExpansionTileThemeData darkTheme = lightTheme.copyWith(
    backgroundColor: AtcoColors.neutralDM,
    textColor: AtcoColors.neutral[80],
  );
}
