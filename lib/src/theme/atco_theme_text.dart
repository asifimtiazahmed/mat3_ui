import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:flutter/material.dart';

/// Theme Configuration for light and Dark themes.
class AtcoThemeText {
  AtcoThemeText._();

  /// Light theme configuration
  static final TextTheme lightTheme = TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 0.3,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 0.15,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 0.15,
      color: AtcoColors.neutral[40],
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 1.2,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 11,
      letterSpacing: 1.2,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 0.25,
      color: AtcoColors.primary[50],
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 34,
      letterSpacing: 0.25,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 24,
      letterSpacing: 0,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 20,
      letterSpacing: 0,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 14,
      letterSpacing: 0.1,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 12,
      letterSpacing: 0.1,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 12,
      letterSpacing: 0.1,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      // fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 16,
      letterSpacing: 0.1,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 16,
      letterSpacing: 0.1,
      color: AtcoColors.neutral[10],
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Manrope',
      package: 'atco_ui',
      fontSize: 16,
      letterSpacing: 0,
      color: AtcoColors.neutral[40],
      fontWeight: FontWeight.w400,
    ),
  );

  /// Dark theme configuration
  static final TextTheme darkTheme = TextTheme(
    bodyLarge: lightTheme.bodyLarge?.copyWith(color: AtcoColors.neutral[95]),
    bodyMedium: lightTheme.bodyMedium?.copyWith(color: AtcoColors.neutral[95]),
    bodySmall: lightTheme.bodySmall?.copyWith(color: AtcoColors.neutral[95]),
    displayLarge: lightTheme.displayLarge?.copyWith(color: AtcoColors.neutral[95]),
    displayMedium: lightTheme.displayMedium?.copyWith(color: AtcoColors.neutral[95]),
    displaySmall: lightTheme.displaySmall?.copyWith(color: AtcoColors.neutral[95]),
    headlineLarge: lightTheme.headlineLarge?.copyWith(color: AtcoColors.neutral[95]),
    headlineMedium: lightTheme.headlineMedium?.copyWith(color: AtcoColors.neutral[95]),
    headlineSmall: lightTheme.headlineSmall?.copyWith(color: AtcoColors.neutral[95]),
    labelLarge: lightTheme.labelLarge?.copyWith(color: AtcoColors.neutral[95]),
    labelMedium: lightTheme.labelMedium?.copyWith(color: AtcoColors.neutral[95]),
    labelSmall: lightTheme.labelSmall?.copyWith(color: AtcoColors.neutral[95]),
    titleLarge: lightTheme.titleLarge?.copyWith(color: AtcoColors.neutral[95]),
    titleMedium: lightTheme.titleMedium?.copyWith(color: AtcoColors.neutral[95]),
    titleSmall: lightTheme.titleSmall?.copyWith(color: AtcoColors.neutral[95]),
  );
}
