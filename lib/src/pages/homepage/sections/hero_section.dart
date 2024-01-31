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
          child: IntrinsicHeight(
            child: Row(
              children: [
                Flexible(
                  child: ConstrainedBox(
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
                                      textStyle:
                                          context.text.headlineMedium!.merge(
                                        GoogleFonts.sofia(
                                          fontWeight: FontWeight.bold,
                                          decorationColor: Colors.blue,
                                          color: context.color.opposite,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
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
                              /* 
                                TextSpan(
                                text: "*Flutter",
                                style: context.text.headlineMedium?.merge(
                                  GoogleFonts.sofia(
                                    fontWeight: FontWeight.bold,
                                    decorationColor: Colors.blue,
                                    color: context.color.opposite,
                                    // decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.wavy,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: " Developer.",
                                style: context.text.headlineMedium?.merge(
                                  GoogleFonts.sofia(
                                    fontWeight: FontWeight.bold,
                                    decorationColor: Colors.blue,
                                    color: context.color.opposite,
                                    // decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.wavy,
                                  ),
                                ),
                              ), 
                              */
                            ],
                          ),
                        ),
                        18.height,
                        Expanded(
                          child: Text(
                            "I build cross-platform apps using Flutter. But just like Flutter I specialize at building Mobile apps. Basically Android & iOS.",
                            softWrap: true,
                            maxLines: 100,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: context.color.secondaryText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                4.width,
                Expanded(
                  child: ColoredBox(
                    color: Colors.green,
                    child: SizedBox.expand(
                      child: RiveAnimation.asset(
                        "assets/animations/rive/face.riv",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
