import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/app.dart';

import 'views/error_screen.dart';
import 'views/splash_screen.dart';
import 'controller/root_state_controller.dart';

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);
    return appState.when(
      data: (data) => const App(),
      loading: () => const SplashScreen(),
      error: (error, stackTrace) => RootErrorBody(
        error: error,
        stackTrace: stackTrace,
        onRefresh: () => ref.invalidate(appStateProvider),
      ),
    );
  }
}
