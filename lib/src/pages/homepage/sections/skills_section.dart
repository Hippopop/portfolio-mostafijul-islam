import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({
    super.key,
  });

  final double speed = 50;

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  late final Timer _autoScrollTimer;
  late final FixedExtentScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = FixedExtentScrollController();
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
    if (_scrollController.hasClients) {
      final currentPosition = _scrollController.offset;
      _scrollController.animateTo(
        currentPosition + widget.speed,
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
    return ValueListenableBuilder(
        valueListenable: context.responsiveStateListener,
        builder: (context, state, child) {
          return ColoredBox(
            color: Colors.white,
            child: MaterialTwoSpecificationWrapper(
              state: context.responsiveState,
              child: SizedBox(
                height: 50,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 120,
                    diameterRatio: 3,
                    controller: _scrollController,
                    childDelegate: ListWheelChildLoopingListDelegate(
                      children: List.generate(
                        10,
                        (index) => Padding(
                          padding: all8,
                          child: Tooltip(
                            message: "Flutter",
                            child: Material(
                              borderRadius: br8,
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: br8,
                                hoverColor: Colors.grey.shade300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RotatedBox(
                                    quarterTurns: 1,
                                    child: Row(
                                      children: [
                                        const SizedBox.square(
                                          dimension: 32,
                                          child: FlutterLogo(),
                                        ),
                                        8.width,
                                        const Text("Flutter"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
