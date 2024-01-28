import 'package:flutter/material.dart';

class GlobalErrorScreen extends StatelessWidget {
  const GlobalErrorScreen({
    super.key,
    this.onRefresh,
    this.stackTrace,
    required this.errorObject,
  });

  final Object errorObject;
  final StackTrace? stackTrace;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Error : ${errorObject.toString()}",
              ),
              const SizedBox(height: 24),
              if (onRefresh != null)
                ElevatedButton(
                  onPressed: onRefresh,
                  child: const Text(
                    "Refresh",
                  ),
                ),
              const SizedBox(height: 24),
              if (stackTrace != null)
                Text(
                  stackTrace.toString(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class RootErrorBody extends StatelessWidget {
  const RootErrorBody({
    super.key,
    this.onRefresh,
    this.stackTrace,
    required this.error,
  });

  final Object error;
  final StackTrace? stackTrace;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GlobalErrorScreen(
        errorObject: error,
        onRefresh: onRefresh,
        stackTrace: stackTrace,
      ),
    );
  }
}
