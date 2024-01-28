import 'dart:developer';

import 'package:flutter/material.dart';
import 'responsive_parent.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResponsiveStateDebuggerChild extends StatefulWidget {
  const ResponsiveStateDebuggerChild({
    super.key,
    required this.state,
    required this.childColor,
  });
  final ResponsiveState state;
  final Color childColor;

  @override
  State<ResponsiveStateDebuggerChild> createState() =>
      _ResponsiveStateDebuggerChildState();
}

class _ResponsiveStateDebuggerChildState
    extends State<ResponsiveStateDebuggerChild> {
  @override
  void initState() {
    super.initState();
    log("Just initialized : ${widget.state.name}");
  }

  @override
  void didUpdateWidget(covariant ResponsiveStateDebuggerChild oldWidget) {
    log("Just updated : (Old => ${oldWidget.state.name}) || (New => ${widget.state.name})");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    log("Just disposed : ${widget.state.name}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: widget.childColor,
      child: SizedBox.expand(
        child: Center(
          child: Text(
            "Screen State: ${widget.state.name}",
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveParentWrapper(
        useMaterialTwoSpecifications: true,
        builder: (context, currentState) => switch (currentState) {
          ResponsiveState.ts => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.white,
            ),
          ResponsiveState.xs => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.grey,
            ),
          ResponsiveState.sm => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.blue,
            ),
          ResponsiveState.md => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.green,
            ),
          ResponsiveState.lg => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.teal,
            ),
          ResponsiveState.xl => ResponsiveStateDebuggerChild(
              state: currentState,
              childColor: Colors.purple,
            ),
        },
      ),
    );
  }
}
