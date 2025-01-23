import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

import '../widgets/header_section_button.dart';

class TopNavigationBarSection extends StatelessWidget {
  const TopNavigationBarSection({
    super.key,
  });

  final List<String> sections = const [
    "About",
    "Tools",
    "Projects",
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, responsiveState, child) {
        return ColoredBox(
          color: context.color.mainBackground.withValues(alpha: 0.3),
          child: SafeArea(
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: MaterialTwoSpecificationWrapper(
                state: context.responsiveState,
                child: Row(
                  children: [
                    12.width,
                    SizedBox.square(
                      dimension: 32,
                      child: Image.asset("images/logo.png"),
                    ),
                    8.width,
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
                    if (context.responsiveState >= ResponsiveState.sm)
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: sections
                              .map(
                                (e) => Padding(
                                  padding: horizontal10,
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
