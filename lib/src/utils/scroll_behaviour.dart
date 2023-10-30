import 'dart:ui';
import 'package:flutter/material.dart';

/// You can use this class in your Material app if you don't want to show
/// scrollbars.
/// ```
/// MaterialApp(
///     scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
/// );
/// ```
class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
  };
}