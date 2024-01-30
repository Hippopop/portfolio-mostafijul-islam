import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/root/root.dart';

import 'src/root/views/error_screen.dart';

void main() {
  runZonedGuarded(
    () async => runApp(const ProviderScope(child: AppRoot())),
    (error, stacktrace) {
      //*** Just a safety layer!
      log("#RootError", error: error, stackTrace: stacktrace);
      return runApp(
        ProviderScope(
          child: RootErrorBody(error: error, stackTrace: stacktrace),
        ),
      );
    },
  );
}
