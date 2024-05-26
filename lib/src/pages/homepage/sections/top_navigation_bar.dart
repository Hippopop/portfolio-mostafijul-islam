import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

import '../widgets/header_section_button.dart';

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
                        maxWidth: 450,
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
