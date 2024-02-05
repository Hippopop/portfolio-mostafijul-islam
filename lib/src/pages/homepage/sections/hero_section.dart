import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:rive/rive.dart';

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
            ResponsiveState.ts ||
            ResponsiveState.xs =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 340,
                      maxWidth: 340,
                      minHeight: 250,
                      minWidth: 250,
                    ),
                    child: const FittedBox(
                      child: HeroRiveFace(),
                    ),
                  ),
                  const HeroDetailsSection(),
                ],
              ),
            _ => IntrinsicHeight(
                child: Row(
                  children: [
                    const HeroDetailsSection(),
                    4.width,
                    const Expanded(
                      child: Center(
                        child: FittedBox(
                          alignment: Alignment.center,
                          child: HeroRiveFace(),
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          72.height,
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
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Flutter Developer",
                        speed: Durations.extralong4,
                        textStyle: context.text.headlineMedium!.merge(
                          GoogleFonts.sofia(
                            fontWeight: FontWeight.bold,
                            decorationColor: Colors.blue,
                            color: context.color.opposite,
                            decorationStyle: TextDecorationStyle.wavy,
                          ),
                        ),
                        colors: [
                          Colors.blue,
                          Colors.grey,
                          Colors.blue,
                          Colors.grey,
                        ],
                      ),
                    ],
                  ),
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
          18.height,
          Text(
            "I build cross-platform apps using Flutter. But just like Flutter I specialize at building Mobile apps. Basically Android & iOS.",
            softWrap: true,
            maxLines: 100,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: context.color.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
