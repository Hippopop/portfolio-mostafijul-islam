import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/pages/homepage/sections/projects_section.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/helpers/scroll/smooth_scroll_controller.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

import 'sections/experience_section.dart';
import 'sections/hero_section.dart';
import 'sections/skills_section.dart';
import 'sections/top_navigation_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveParentWrapper(
        builder: (context, currentState) {
          return const Column(
            children: [
              TopNavigationBarSection(),
              Expanded(child: BodySection()),
            ],
          );
        },
      ),
    );
  }
}

class BodySection extends StatefulWidget {
  const BodySection({
    super.key,
  });

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  bool _canPoint = true;
  late final controller = SmoothScrollController();
  // Timer? _debounceTimer;

  @override
  void dispose() {
    // _debounceTimer?.cancel();
    controller.dispose();
    super.dispose();
  }

  // _debounceSetFunction() {
  //   setState(() => _canPoint = false);

  //   _debounceTimer?.cancel();
  //   _debounceTimer = null;
  //   _debounceTimer = Timer.periodic(300.milliseconds, (tick) {
  //     setState(() => _canPoint = true);
  //     _debounceTimer?.cancel();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        // if (notification is ScrollStartNotification) _debounceSetFunction();
        if (notification is ScrollStartNotification) {
          setState(() {
            _canPoint = false;
          });
        } else if (notification is ScrollEndNotification) {
          setState(() {
            _canPoint = true;
          });
        }
        return true;
      },
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            const HeroSection(),
            32.height,
            const SkillsSection(),
            32.height,
            IgnorePointer(
              ignoring: !_canPoint,
              child: const ExperienceSection(),
            ),
            32.height,
            IgnorePointer(
              ignoring: !_canPoint,
              child: const ProjectsSection(),
            ),
            200.height,
          ],
        ),
      ),
    );
  }
}
