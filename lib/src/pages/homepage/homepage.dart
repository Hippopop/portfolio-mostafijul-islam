import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveParentWrapper(
        builder: (context, currentState) {
          return Stack(
            children: [
              /* SizedBox.expand(
                child: Image.network(
                  "https://images.unsplash.com/photo-1705776611690-f1bcf7ab1b89?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDY3fDZzTVZqVExTa2VRfHxlbnwwfHx8fHw%3D",
                  fit: BoxFit.cover,
                ),
              ), */
              const Column(
                children: [
                  TopNavigationBarSection(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class TopNavigationBarSection extends StatelessWidget {
  const TopNavigationBarSection({
    super.key,
  });

  final List<String> sections = const [
    "Home",
    "About",
    "Tools",
    "Projects",
    "Blog",
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, responsiveState, child) {
        return ColoredBox(
          color: context.color.mainBackground.withOpacity(0.3),
          child: SafeArea(
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: MaterialTwoSpecificationWrapper(
                state: context.responsiveState,
                child: Row(
                  children: [
                    FittedBox(
                      child: Text(
                        "Mostafij",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.headlineSmall?.merge(
                          GoogleFonts.righteous(color: context.color.opposite),
                        ),
                      ),
                    ),
                    const Spacer(),
                    if (context.responsiveState > ResponsiveState.sm)
                      LimitedBox(
                        maxWidth: 420,
                        child: Row(
                          children: sections
                              .map(
                                (e) => Expanded(
                                  child: SectionButton(
                                    text: e,
                                    onTap: () {},
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SectionButton extends StatefulWidget {
  const SectionButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  State<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.raleway(),
      ),
      onPressed: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(widget.text),
                ),
              ),
              AnimatedSize(
                duration: Durations.long1,
                child: SizedBox(
                  height: _isHovered ? 3 : 0,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.color.opposite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: AnimatedSize(
                    duration: Durations.long1,
                    child: SizedBox(
                      height: _isHovered ? 1 : 0,
                      width: _isHovered ? double.infinity : 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedUnderlinedHeader extends StatefulWidget {
  const AnimatedUnderlinedHeader({
    super.key,
    required this.headerText,
  });
  final Widget headerText;
  @override
  State<AnimatedUnderlinedHeader> createState() =>
      _AnimatedUnderlinedHeaderState();
}

class _AnimatedUnderlinedHeaderState extends State<AnimatedUnderlinedHeader> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    final currentWidth = (!isHovering) ? 0 : double.infinity;
    final currentHeight = (!isHovering) ? 0 : 3;
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovering = true;
      }),
      onExit: (_) => setState(() {
        isHovering = false;
      }),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: widget.headerText,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 400),
                  child: SizedBox(
                    height: currentHeight.toDouble(),
                    width: currentWidth.toDouble(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
