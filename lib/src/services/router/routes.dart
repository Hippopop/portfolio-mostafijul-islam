import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/pages/homepage/homepage.dart';
import 'package:portfolio_mostafij/src/pages/projects/views/project_popup.dart';
import 'package:portfolio_mostafij/src/root/views/error_screen.dart';
import 'package:portfolio_mostafij/src/services/router/transitions/animated_transition.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: '#root');
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Homepage(),
        ),
        GoRoute(
          path: '/project/:id',
          pageBuilder: (context, state) => AnimatedDialogueBuilder(
            child: SingleProjectWindow(
              id: state.pathParameters['id'] as String,
            ),
          ),
        ),
      ],
      errorBuilder: (context, state) => GlobalErrorScreen(
        errorObject: state.error as Object,
      ),
    );
  },
);
