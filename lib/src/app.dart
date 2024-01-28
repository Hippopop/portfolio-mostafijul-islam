import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'services/router/routes.dart';
import 'services/theme/controller/theme_controller.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final themeState = ref.watch(themeStateProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Portfolio Mostafij',
      theme: themeState.currentTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
