
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;

/// True if the platform is iOS or Android, False otherwise.
bool isMobileDevice() => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

/// True if the platform is Android, False otherwise
bool isAndroid() => !kIsWeb && Platform.isAndroid;

/// True if the platform is iOS, False otherwise
bool isIOS() => !kIsWeb && Platform.isIOS;

/// True if the platform is Web, False otherwise
bool isWeb() => kIsWeb;
