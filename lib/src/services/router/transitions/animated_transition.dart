import 'package:flutter/material.dart';

class AnimatedDialogueBuilder<T> extends Page<T> {
  final Widget child;
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final Duration? transitionDuration;

  const AnimatedDialogueBuilder({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    this.themes,
    this.anchorPoint,
    this.barrierLabel,
    required this.child,
    this.transitionDuration,
    this.useSafeArea = true,
    this.barrierDismissible = true,
    this.barrierColor = Colors.black54,
  });

  @override
  Route<T> createRoute(BuildContext context) => RawDialogRoute<T>(
        settings: this,
        anchorPoint: anchorPoint,
        barrierLabel: barrierLabel,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        pageBuilder: (_, __, ___) => child,
        transitionDuration: transitionDuration ?? Durations.short4,
        transitionBuilder: (_, animation, __, child) => SlideTransition(
          position: Tween(
            end: const Offset(0, 0),
            begin: const Offset(1, 0),
          ).animate(animation),
          child: child,
        ),
      );
}
