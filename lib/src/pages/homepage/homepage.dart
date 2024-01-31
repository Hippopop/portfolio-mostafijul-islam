import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

import 'sections/hero_section.dart';
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(),
        ],
      ),
    );
  }
}
