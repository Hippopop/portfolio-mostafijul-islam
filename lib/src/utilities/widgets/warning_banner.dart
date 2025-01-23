import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/services/theme/extensions/extensions.dart';

sealed class TextPart {
  final String text;
  final Color? color;
  final TextStyle? style;

  const TextPart({
    required this.text,
    required this.color,
    required this.style,
  });
}

class TextWithColor extends TextPart {
  const TextWithColor({
    required super.text,
    required Color color,
  }) : super(color: color, style: null);
}

class TextWithStyle extends TextPart {
  const TextWithStyle({
    required super.text,
    required TextStyle style,
  }) : super(color: null, style: style);
}

const List<TextPart> _defaultTextParts = [
  TextWithStyle(
    text: "🚧 ",
    style: TextStyle(),
  ),
  TextWithColor(
    text: "Warning: ",
    color: Colors.red,
  ),
  TextWithColor(
    text: "This site is currently under construction. ",
    color: Colors.grey,
  ),
  TextWithColor(
    text: "Please be aware of dusts and stones.",
    color: Colors.grey,
  ),
  TextWithStyle(
    text: " ~ Mostafij.",
    style: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
  ),
];

class UnderConstructionWarningWrapper extends StatefulWidget {
  const UnderConstructionWarningWrapper({
    super.key,
    this.child,
    this.textParts,
  });

  final Widget? child;
  final List<TextPart>? textParts;

  @override
  State<UnderConstructionWarningWrapper> createState() =>
      _UnderConstructionWarningWrapperState();
}

class _UnderConstructionWarningWrapperState
    extends State<UnderConstructionWarningWrapper> {
  late final List<TextPart> _listOfTextParts;
  late final ScrollController controller;
  late final Timer _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _listOfTextParts = widget.textParts ?? _defaultTextParts;
    controller = ScrollController();
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        if (mounted) {
          _autoScrollTimer = Timer.periodic(
            const Duration(milliseconds: 500),
            _autoScrollSettingCallback,
          );
        }
      },
    );
  }

  _autoScrollSettingCallback(Timer timer) {
    if (controller.hasClients) {
      final currentPosition = controller.offset;
      controller.animateTo(
        currentPosition + 20,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _autoScrollTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
          child: ColoredBox(
            color: Colors.white,
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (_listOfTextParts.isEmpty) return null;
                final [firstText, ...otherParts] = _listOfTextParts;
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: MediaQuery.sizeOf(context).width / 2,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: firstText.text,
                      style: context.text.bodyMedium,
                      children: otherParts.indexed
                          .map(
                            (part) => switch (part.$2) {
                              TextWithColor() => TextSpan(
                                  text: part.$2.text,
                                  style: TextStyle(
                                    color: part.$2.color,
                                  ),
                                ),
                              TextWithStyle() => TextSpan(
                                  text: part.$2.text,
                                  style: part.$2.style,
                                ),
                            },
                          )
                          .toList(),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: widget.child ?? const SizedBox(),
        ),
      ],
    );
  }
}
