import 'package:flutter/material.dart';
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
          return const Column(
            children: [
              TopNavigationBarSection(),
              Expanded(
                child: BodySection(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeroSection(),
          32.height,
          const SkillsSection(),
          32.height,
          const ExperienceSection(),
          32.height,
          const ProjectsSection(),
          200.height,
        ],
      ),
    );
  }
}
