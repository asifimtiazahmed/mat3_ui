import 'package:flutter/material.dart';

/// To exclude animation from page transition.
class NoTransitionsBuilder extends PageTransitionsBuilder {

  /// No Transition animation for the selected platform
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T>? route,
      BuildContext? context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget? child,
      ) {
    // only return the child without warping it with animations
    return child!;
  }
}

