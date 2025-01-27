import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/svg_icon.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, value, child) => MaterialTwoSpecificationWrapper(
        state: value!,
        child: Column(
          children: [
            Padding(
              padding: vertical16,
              child: Center(
                child: Text(
                  "· About Me ·",
                  style: context.textTheme.headlineMedium?.merge(
                    GoogleFonts.sofia(
                      color: context.color.opposite,
                    ),
                  ),
                ),
              ),
            ),
            24.height,
            Text("I'm not that good at introducting myself, but let me try."),
            48.height,
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _ImageWidget(),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final diameter = (constraints.maxWidth - 80);
      final calloutSize = 150.0;
      final margin = 24.0;
      final radius = diameter / 2;
      return SizedBox.square(
        dimension: diameter,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.color.theme,
              ),
              child: Padding(
                padding: EdgeInsets.all(margin),
                child: FittedBox(
                  child: CircleAvatar(
                    radius: radius,
                    foregroundImage:
                        const AssetImage("assets/images/profile.jpeg"),
                  ),
                ),
              ),
            ),
            Positioned(
              left: /* (1.707 * radius) */
                  (0.293 * radius) - (calloutSize) + margin,
              top: (0.293 * radius) - (calloutSize) + margin,
              child: SizedBox.square(
                dimension: calloutSize,
                child: Stack(
                  children: [
                    SizedBox.expand(
                      child: Transform.flip(
                        flipX: true,
                        child: SvgIcon(
                          "assets/icons/callout.svg",
                          color: context.color.primary,
                        ),
                      ),
                    ),
                    SizedBox.expand(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: FractionallySizedBox(
                          alignment: Alignment.center,
                          heightFactor: 0.65,
                          widthFactor: 0.8,
                          child: SizedBox.expand(
                            child: Padding(
                              padding: all4,
                              child: FittedBox(
                                alignment: Alignment.center,
                                child: Text(
                                  "👋",
                                  style: TextStyle(
                                    color: context.color.secondarySupport,
                                  ),
                                )
                                    .animate(
                                      autoPlay: true,
                                      onComplete: (controller) =>
                                          controller.repeat(),
                                    )
                                    .shakeX(
                                      hz: 4,
                                      amount: 2,
                                      duration: Durations.extralong4,
                                      delay: const Duration(seconds: 3),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
