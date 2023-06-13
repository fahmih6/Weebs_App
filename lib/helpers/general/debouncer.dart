import 'dart:async';

import 'package:flutter/material.dart';

/// Used to wait some time perform performing action
class Debouncer {
  final Duration duration;
  Timer? _timer;

  Debouncer({required this.duration});

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }
}
