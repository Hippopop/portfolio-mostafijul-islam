import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/spinning_feedback_button.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/warning_banner.dart';
import 'package:url_launcher/url_launcher.dart';

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
      builder: (context, child) {
        return UnderConstructionWarningWrapper(
          child: FeedbackButtonWrapper(
            child: child,
            onTap: () => launchUrl(
              Uri.parse(
                "https://github.com/Hippopop/portfolio-mostafijul-islam/issues",
              ),
            ),
          ),
        );
      },
    );
  }
}
