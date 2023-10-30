import 'package:atco_ui/src/pageTransition/no_transitions_builder.dart';
import 'package:flutter/material.dart';

/// App Page Transition Theme
class AtcoPageTransition {
  /// No Transition if the platform is Web otherwise use default page transitions
  /// for iOS and Android platforms.
  static PageTransitionsTheme pageTransitionTheme = PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
            // No animations for every OS if the app running on the web
            for (final platform in TargetPlatform.values) platform: const NoTransitionsBuilder(),
          },
  );
}
