import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/root/root.dart';

void main() {
  runZonedGuarded(
    () async => runApp(
      const ProviderScope(child: AppRoot()),
    ),

    //*** Just a safety layer!
    (error, stacktrace) => log("#RootError",
        error: error,
        stackTrace:
            stacktrace) /* RootErrorBody(
      error: error,
      stackTrace: stacktrace,
    ) */
    ,
  );
}
