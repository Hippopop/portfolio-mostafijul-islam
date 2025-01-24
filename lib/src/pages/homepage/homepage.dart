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
      body: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFFDEE9).withAlpha(50),
                  const Color(0xFFB5FFFC).withAlpha(50),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: const SizedBox.expand(),
          ),
          ResponsiveParentWrapper(
            builder: (context, currentState) {
              return const BodySection();
            },
          ),
        ],
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
  late final _controller = ScrollController();

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  bool _canPoint = true;
  Timer? _debounceTimer;
  _debounceSetFunction() {
    _debounceTimer = Timer.periodic(500.milliseconds, (tick) {
      setState(() => _canPoint = true);
      _debounceTimer?.cancel();
      _debounceTimer = null;
    });
  }

  final _allItems = [
    (label: "Home", key: GlobalKey()),
    (label: "Tools", key: GlobalKey()),
    (label: "Experiences", key: GlobalKey()),
    (label: "Projects", key: GlobalKey()),
    (label: "About", key: GlobalKey()),
  ];

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
        controller: _controller,
        slivers: [
          // SliverAppBar(
          //   pinned: true,
          //   toolbarHeight: 100,
          //   flexibleSpace: TopNavigationBarSection(sections: _allItems),
          //   forceMaterialTransparency: true,
          // ),
          CustomSliverAppBar(sections: _allItems),
          32.height,
          HeroSection(
            key: _allItems[0].key,
          ),
          32.height,
          64.height,
          IgnorePointer(
            ignoring: !_canPoint,
            child: SkillsSection(
              key: _allItems[1].key,
            ),
          ),
          64.height,
          IgnorePointer(
            ignoring: !_canPoint,
            child: ExperienceSection(
              key: _allItems[2].key,
            ),
          ),
          64.height,
          IgnorePointer(
            ignoring: !_canPoint,
            child: ProjectSection(
              key: _allItems[3].key,
            ),
          ),
          SizedBox(
            key: _allItems[4].key,
            child: 200.height,
          ),
        ]
            .indexed
            .map((e) => e.$1 == 0 ? e.$2 : SliverToBoxAdapter(child: e.$2))
            .toList(),
      ),
    );
  }
}
