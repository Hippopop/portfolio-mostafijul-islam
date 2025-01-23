import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_mostafij/src/pages/homepage/sections/projects_section.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
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
          return const BodySection();
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
  Timer? _debounceTimer;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  _debounceSetFunction() {
    _debounceTimer = Timer.periodic(500.milliseconds, (tick) {
      setState(() => _canPoint = true);
      _debounceTimer?.cancel();
      _debounceTimer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification && _canPoint) {
          setState(() => _canPoint = false);
        } else if (notification is ScrollEndNotification) {
          _debounceSetFunction();
        }
        return true;
      },
      child: CustomScrollView(
        slivers: [
          const TopNavigationBarSection(),
          32.height,
          const HeroSection(),
          64.height,
          const SkillsSection(),
          64.height,
          IgnorePointer(
            ignoring: !_canPoint,
            child: const ExperienceSection(),
          ),
          64.height,
          IgnorePointer(
            ignoring: !_canPoint,
            child: const ProjectsSection(),
          ),
          200.height,
        ].map((e) => SliverToBoxAdapter(child: e)).toList(),
      ),
    );
  }
}
