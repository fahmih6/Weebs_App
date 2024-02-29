import 'dart:io';

import 'package:flutter/foundation.dart';

extension PlatformExtension on Platform {
  /// Is Desktop
  static bool get isDesktop => !kIsWeb
      ? Platform.isWindows || Platform.isMacOS || Platform.isWindows
      : false;
}
