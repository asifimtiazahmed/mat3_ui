import 'dart:async';

import 'package:flutter/foundation.dart';

/// This is useful to throttle TextField change event.
class Debouncer {
  /// The class should be used like this:
  /// ```dart
  /// final _debouncer = Debouncer(milliseconds: 500);
  /// onTextChange(String text) {
  ///   _debouncer.run(() => print(text));
  /// }
  /// ```
  Debouncer({this.milliseconds = 300});

  /// Wait [milliseconds] before calling the action
  final int milliseconds;

  Timer? _timer;

  /// Wait [milliseconds] and then call [action]
  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
