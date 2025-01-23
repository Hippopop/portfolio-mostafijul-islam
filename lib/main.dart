import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/root/root.dart';

import 'src/root/views/error_screen.dart';

void main() {
  //* Just an unnecessary(*for this project!) safety layer!
  runZonedGuarded(
    () => runApp(
      const ProviderScope(
        child: AppRoot(),
      ),
    ),
    (error, stacktrace) => runApp(
      ProviderScope(
        child: RootErrorBody(error: error, stackTrace: stacktrace),
      ),
    ),
  );
}
