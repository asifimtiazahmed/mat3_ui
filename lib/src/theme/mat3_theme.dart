import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui/src/resources/mat3_color_schemes.dart';
import 'package:material_ui/src/theme/mat3_theme_appbar.dart';
import 'package:material_ui/src/theme/mat3_theme_bottom_nav_bar.dart';
import 'package:material_ui/src/theme/mat3_theme_button_elevated.dart';
import 'package:material_ui/src/theme/mat3_theme_button_outlined.dart';
import 'package:material_ui/src/theme/mat3_theme_button_text.dart';
import 'package:material_ui/src/theme/mat3_theme_checkbox.dart';
import 'package:material_ui/src/theme/mat3_theme_dialog.dart';
import 'package:material_ui/src/theme/mat3_theme_divider.dart';
import 'package:material_ui/src/theme/mat3_theme_expansion_tile.dart';
import 'package:material_ui/src/theme/mat3_theme_icon.dart';
import 'package:material_ui/src/theme/mat3_theme_input_decoration.dart';
import 'package:material_ui/src/theme/mat3_theme_page_transition.dart';
import 'package:material_ui/src/theme/mat3_theme_radiobutton.dart';
import 'package:material_ui/src/theme/mat3_theme_switch.dart';
import 'package:material_ui/src/theme/mat3_theme_tabbar.dart';
import 'package:material_ui/src/theme/mat3_theme_text.dart';
import 'package:material_ui/src/theme/mat3_theme_toggle_buttons.dart';
import 'package:flutter/material.dart';


/// The App theme configuration for light and dark modes
class Mat3Theme {
  Mat3Theme._();

  /// Theme configuration to be used when in light mode
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Manrope',
    useMaterial3: true,
    colorScheme: lightColorScheme,
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: Mat3Colors.bgLightMode,
    textTheme: Mat3ThemeText.lightTheme,
    appBarTheme: Mat3ThemeAppBar.lightTheme,
    tabBarTheme: Mat3ThemeTabBar.lightTheme,
    bottomNavigationBarTheme: Mat3ThemeBottomNavBar.lightTheme,
    textButtonTheme: Mat3TextButtonTheme.lightTheme,
    outlinedButtonTheme: Mat3OutlinedButtonTheme.lightTheme,
    elevatedButtonTheme: Mat3ElevatedButtonTheme.lightTheme,
    toggleButtonsTheme: Mat3ToggleButtonsTheme.lightTheme,
    inputDecorationTheme: Mat3InputDecoration.lightTheme,
    checkboxTheme: Mat3CheckboxTheme.lightTheme,
    switchTheme: Mat3SwitchTheme.lightTheme,
    radioTheme: Mat3RadioButtonTheme.lightTheme,
    iconTheme: Mat3IconTheme.lightTheme,
    dividerTheme: Mat3DividerTheme.lightTheme,
    dialogTheme: Mat3DialogTheme.lightTheme,
    expansionTileTheme: Mat3ThemeExpansionTile.lightTheme,
    pageTransitionsTheme: Mat3PageTransition.pageTransitionTheme,
  );

  /// Theme configuration to be used when in dark mode
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Manrope',
    useMaterial3: true,
    colorScheme: darkColorScheme,
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: Mat3Colors.bgDarkMode,
    textTheme: Mat3ThemeText.darkTheme,
    appBarTheme: Mat3ThemeAppBar.darkTheme,
    tabBarTheme: Mat3ThemeTabBar.darkTheme,
    bottomNavigationBarTheme: Mat3ThemeBottomNavBar.darkTheme,
    textButtonTheme: Mat3TextButtonTheme.darkTheme,
    outlinedButtonTheme: Mat3OutlinedButtonTheme.darkTheme,
    elevatedButtonTheme: Mat3ElevatedButtonTheme.darkTheme,
    toggleButtonsTheme: Mat3ToggleButtonsTheme.darkTheme,
    inputDecorationTheme: Mat3InputDecoration.darkTheme,
    checkboxTheme: Mat3CheckboxTheme.darkTheme,
    switchTheme: Mat3SwitchTheme.darkTheme,
    radioTheme: Mat3RadioButtonTheme.darkTheme,
    iconTheme: Mat3IconTheme.darkTheme,
    dividerTheme: Mat3DividerTheme.darkTheme,
    dialogTheme: Mat3DialogTheme.darkTheme,
    expansionTileTheme: Mat3ThemeExpansionTile.darkTheme,
    pageTransitionsTheme: Mat3PageTransition.pageTransitionTheme,
  );
}
