import 'package:material_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

/// Build Context Extension
extension BuildContextExtension on BuildContext {

  /// True if theme of the device is Dark, False otherwise.
  bool get isDarkTheme =>  MediaQuery.of(this).platformBrightness == Brightness.dark;

  /// True if theme of the device is Light, False otherwise.
  bool get isLightTheme =>  MediaQuery.of(this).platformBrightness == Brightness.light;

  /// Returns the width of the screen
  double get screenSizeWidth => MediaQuery.of(this).size.width;

  /// Returns the height of the screen
  double get screenSizeHeight => MediaQuery.of(this).size.height;

  /// True if the width of the current screen size is less than 416 pixels.
  bool get isSmallScreen => screenSizeWidth <= smallScreen;

  /// True if the width of the current screen size is less than 768 pixels
  /// but grater than 416 pixels.
  bool get isMediumScreen => screenSizeWidth > smallScreen && screenSizeWidth <= mediumScreen;

  /// True if the width of the current screen size is less than 1440 pixels
  /// but grater than 768 pixels.
  bool get isLargeScreen => screenSizeWidth > mediumScreen && screenSizeWidth <= largeScreen;

  /// True if the width of the current screen size is bigger than 1440 pixels.
  bool get isVeryLargeScreen => screenSizeWidth > largeScreen;

  /// Remove the focus from the item has focused
  void get resetFocus => FocusScope.of(this).requestFocus(FocusNode());

}
