import 'package:flutter/material.dart';

class PausedWhilstScrolling extends StatelessWidget {
  const PausedWhilstScrolling({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final notifier = Scrollable.of(context).position.isScrollingNotifier;
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: (BuildContext context, bool isScrolling, Widget? child) {
        return TickerMode(
          enabled: !isScrolling,
          child: child!,
        );
      },
      child: child,
    );
  }
}
