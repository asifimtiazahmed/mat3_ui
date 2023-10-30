import 'package:atco_ui/atco_ui.dart';
import 'package:atco_ui/src/resources/atco_color_schemes.dart';
import 'package:atco_ui/src/theme/atco_theme_appbar.dart';
import 'package:atco_ui/src/theme/atco_theme_bottom_nav_bar.dart';
import 'package:atco_ui/src/theme/atco_theme_button_elevated.dart';
import 'package:atco_ui/src/theme/atco_theme_button_outlined.dart';
import 'package:atco_ui/src/theme/atco_theme_button_text.dart';
import 'package:atco_ui/src/theme/atco_theme_checkbox.dart';
import 'package:atco_ui/src/theme/atco_theme_dialog.dart';
import 'package:atco_ui/src/theme/atco_theme_divider.dart';
import 'package:atco_ui/src/theme/atco_theme_expansion_tile.dart';
import 'package:atco_ui/src/theme/atco_theme_icon.dart';
import 'package:atco_ui/src/theme/atco_theme_input_decoration.dart';
import 'package:atco_ui/src/theme/atco_theme_page_transition.dart';
import 'package:atco_ui/src/theme/atco_theme_radiobutton.dart';
import 'package:atco_ui/src/theme/atco_theme_switch.dart';
import 'package:atco_ui/src/theme/atco_theme_tabbar.dart';
import 'package:atco_ui/src/theme/atco_theme_text.dart';
import 'package:atco_ui/src/theme/atco_theme_toggle_buttons.dart';
import 'package:flutter/material.dart';

/// The App theme configuration for light and dark modes
class AtcoTheme {
  AtcoTheme._();

  /// Theme configuration to be used when in light mode
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Manrope',
    useMaterial3: true,
    colorScheme: lightColorScheme,
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: AtcoColors.bgLightMode,
    textTheme: AtcoThemeText.lightTheme,
    appBarTheme: AtcoThemeAppBar.lightTheme,
    tabBarTheme: AtcoThemeTabBar.lightTheme,
    bottomNavigationBarTheme: AtcoThemeBottomNavBar.lightTheme,
    textButtonTheme: AtcoTextButtonTheme.lightTheme,
    outlinedButtonTheme: AtcoOutlinedButtonTheme.lightTheme,
    elevatedButtonTheme: AtcoElevatedButtonTheme.lightTheme,
    toggleButtonsTheme: AtcoToggleButtonsTheme.lightTheme,
    inputDecorationTheme: AtcoInputDecoration.lightTheme,
    checkboxTheme: AtcoCheckboxTheme.lightTheme,
    switchTheme: AtcoSwitchTheme.lightTheme,
    radioTheme: AtcoRadioButtonTheme.lightTheme,
    iconTheme: AtcoIconTheme.lightTheme,
    dividerTheme: AtcoDividerTheme.lightTheme,
    dialogTheme: AtcoDialogTheme.lightTheme,
    expansionTileTheme: AtcoThemeExpansionTile.lightTheme,
    pageTransitionsTheme: AtcoPageTransition.pageTransitionTheme,
  );

  /// Theme configuration to be used when in dark mode
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Manrope',
    useMaterial3: true,
    colorScheme: darkColorScheme,
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: AtcoColors.bgDarkMode,
    textTheme: AtcoThemeText.darkTheme,
    appBarTheme: AtcoThemeAppBar.darkTheme,
    tabBarTheme: AtcoThemeTabBar.darkTheme,
    bottomNavigationBarTheme: AtcoThemeBottomNavBar.darkTheme,
    textButtonTheme: AtcoTextButtonTheme.darkTheme,
    outlinedButtonTheme: AtcoOutlinedButtonTheme.darkTheme,
    elevatedButtonTheme: AtcoElevatedButtonTheme.darkTheme,
    toggleButtonsTheme: AtcoToggleButtonsTheme.darkTheme,
    inputDecorationTheme: AtcoInputDecoration.darkTheme,
    checkboxTheme: AtcoCheckboxTheme.darkTheme,
    switchTheme: AtcoSwitchTheme.darkTheme,
    radioTheme: AtcoRadioButtonTheme.darkTheme,
    iconTheme: AtcoIconTheme.darkTheme,
    dividerTheme: AtcoDividerTheme.darkTheme,
    dialogTheme: AtcoDialogTheme.darkTheme,
    expansionTileTheme: AtcoThemeExpansionTile.darkTheme,
    pageTransitionsTheme: AtcoPageTransition.pageTransitionTheme,
  );
}
