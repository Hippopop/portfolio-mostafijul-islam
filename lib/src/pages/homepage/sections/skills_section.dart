import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/svg_icon.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({
    super.key,
  });

  final double speed = 10;

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

const List<String> _skills = [
  "Flutter",
  "NodeJs",
  "ExpressJs",
  "React",
  "Svelte",
  "MySql",
  "Prisma",
  "MongoDB",
  "Dart",
  "TypeScript",
  "Kotlin",
  "C++",
  "Php",
  "Python",
  "Firebase",
  "Git",
  "Github",
];

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

  bool _stopScroll = false;

  _autoScrollSettingCallback(Timer timer) {
    if (_scrollController.hasClients && !_stopScroll) {
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
        return MouseRegion(
          onEnter: (event) => setState(() {
            _stopScroll = true;
          }),
          onExit: (event) => setState(() {
            _stopScroll = false;
          }),
          child: ColoredBox(
            color: Colors.white,
            child: MaterialTwoSpecificationWrapper(
              state: context.responsiveState,
              child: SizedBox(
                height: 60,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 160,
                    diameterRatio: 4,
                    controller: _scrollController,
                    childDelegate: ListWheelChildLoopingListDelegate(
                      children: _skills
                          .map(
                            (item) => _SingleSkillBoxWidget(
                              name: item,
                              // icon: item.icon,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SingleSkillBoxWidget extends StatelessWidget {
  const _SingleSkillBoxWidget({
    super.key,
    required this.name,
    // required this.icon,
  });

  final String name;
  // final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all8,
      child: Tooltip(
        message: name,
        child: Material(
          borderRadius: br8,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: br8,
            hoverColor: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 1,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgIcon(
                        'assets/icons/tools/${name.toLowerCase()}.svg',
                        size: 32,
                        useColorFilter: false,
                      ),
                      8.width,
                      Text(name),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
