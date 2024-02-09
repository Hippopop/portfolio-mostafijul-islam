import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:rive/rive.dart';

final _initialDuration = 800.ms;

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, state, child) {
        return MaterialTwoSpecificationWrapper(
          state: context.responsiveState,
          child: switch (state) {
            ResponsiveState.sm ||
            ResponsiveState.xs ||
            ResponsiveState.ts =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 340,
                        maxWidth: 340,
                        minHeight: 250,
                        minWidth: 250,
                      ),
                      child: FittedBox(
                        child: const HeroRiveFace()
                            .animate()
                            .fadeIn(duration: _initialDuration),
                      ),
                    ),
                  ),
                  12.height,
                  const HeroDetailsSection(),
                ],
              ),
            _ => IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      children: [
                        52.height,
                        const HeroDetailsSection(),
                      ],
                    ),
                    4.width,
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          alignment: Alignment.center,
                          child: const HeroRiveFace()
                              .animate()
                              .fadeIn(duration: _initialDuration),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          },
        );
      },
    );
  }
}

class HeroRiveFace extends StatelessWidget {
  const HeroRiveFace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 500,
      child: RiveAnimation.asset(
        "assets/animations/rive/face.riv",
        onInit: (artBoard) {
          const baseStateName = "State Machine 1";
          final controller = StateMachineController.fromArtboard(
            artBoard,
            baseStateName,
          );
          if (controller != null) {
            artBoard.addController(controller);
          }
        },
      ),
    );
  }
}

class HeroDetailsSection extends StatelessWidget {
  const HeroDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: ResponsiveState.ts.max,
        minWidth: ResponsiveState.ts.min,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            softWrap: true,
            text: TextSpan(
              text: "Hello! 👋\nI'm ",
              style: context.text.headlineMedium?.merge(
                GoogleFonts.sofia(
                  color: context.color.opposite,
                ),
              ),
              children: [
                WidgetSpan(child: 60.height),
                TextSpan(
                  text: "Mostafijul Islam",
                  style: context.text.headlineMedium?.merge(
                    GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.blue,
                      color: context.color.opposite,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ),
                const TextSpan(
                  text: ".\n",
                ),
                TextSpan(
                  text: "I'm a ",
                  style: context.text.headlineMedium?.merge(
                    GoogleFonts.sofia(
                      color: context.color.opposite,
                    ),
                  ),
                ),
                WidgetSpan(
                  child: Text(
                    "Flutter Developer",
                    style: context.text.headlineMedium!.merge(
                      GoogleFonts.sofia(
                        fontWeight: FontWeight.bold,
                        color: context.color.opposite,
                      ),
                    ),
                  )
                      .animate(onPlay: (controller) => controller.repeat())
                      .shimmer(
                    curve: Curves.ease,
                    duration: 5.seconds,
                    colors: [
                      Colors.blue,
                      Colors.blue.shade300,
                      Colors.grey.shade400,
                      Colors.grey,
                      Colors.grey.shade300,
                      Colors.blue,
                      Colors.blue.shade300,
                      Colors.grey.shade400,
                      Colors.grey,
                      Colors.grey.shade300,
                      Colors.blue.shade300,
                      Colors.blue,
                    ],
                  ),
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          )
              .animate()
              .fadeIn(duration: _initialDuration)
              // .then(delay: 200.ms) // baseline=800ms
              .slide(),
          18.height,
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Text(
              "I build cross-platform apps using Flutter. But just like Flutter I specialize at building Mobile apps. Basically Android & iOS.",
              softWrap: true,
              maxLines: 100,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: context.color.secondaryText,
              ),
            )
                .animate()
                .fadeIn(duration: _initialDuration)
                // .then(delay: 200.ms) // baseline=800ms
                .slide(),
          ),
        ],
      ),
    );
  }
}
