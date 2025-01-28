import 'dart:ui' show ImageFilter;

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
    required this.sections,
  });

  final List<({String label, GlobalKey key})> sections;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, responsiveState, child) {
        return ColoredBox(
          color: context.color.mainBackground.withValues(alpha: 0.3),
          child: SafeArea(
            child: SizedBox(
              height: 80,
              width: double.infinity,
              child: MaterialTwoSpecificationWrapper(
                state: context.responsiveState,
                child: Row(
                  children: [
                    12.width,
                    SizedBox.square(
                      dimension: 32,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    8.width,
                    FittedBox(
                      child: Text(
                        "Mostafij",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.headlineSmall?.merge(
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
                                    text: e.label,
                                    onTap: () {
                                      final context = e.key.currentContext;
                                      if (context != null) {
                                        Scrollable.ensureVisible(
                                          e.key.currentContext!,
                                        );
                                      } else {
                                        print(
                                            "No context found for ${e.label}!");
                                      }
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    else
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: DrawerButtonIcon(),
                              onPressed: () {},
                            ),
                          ],
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

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.sections,
  });
  final List<({String label, GlobalKey key})> sections;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, value, _) => SliverPersistentHeader(
        pinned: true,
        floating: false,
        delegate: _CustomAppBarDelegate(max: 125, min: 80, sections: sections),
      ),
    );
  }
}

class _CustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  _CustomAppBarDelegate({
    required this.max,
    required this.min,
    required this.sections,
  });
  final List<({String label, GlobalKey key})> sections;

  final double max;
  @override
  double get maxExtent => max;

  final double min;
  @override
  double get minExtent => min;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final bool isScrolledUnder = overlapsContent || (shrinkOffset > max - min);
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, value, child) => Stack(
        children: [
          if (isScrolledUnder) ...[
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white30,
                    Colors.white70,
                    Colors.white30,
                    Colors.white70,
                    Colors.white30,
                    Colors.white70,
                  ],
                ),
              ),
              child: SizedBox.expand(),
            ),
            /* 
           ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: ColoredBox(
              color: context.color.mainAccent.withAlpha(30),
              child: const SizedBox.expand(),
            ),
          ),
           */
            /*  ColoredBox(
              color: context.color.mainAccent.withAlpha(30),
              child: SizedBox(
                height: min,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: min,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: SizedBox(
                  height: min,
                  width: double.infinity,
                ),
              ),
            ), */
          ],
          SafeArea(
            child: SizedBox.expand(
              child: MaterialTwoSpecificationWrapper(
                state: context.responsiveState,
                child: Center(
                  child: Row(
                    children: [
                      12.width,
                      SizedBox.square(
                        dimension: 32,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      8.width,
                      FittedBox(
                        child: Text(
                          "Mostafij",
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.headlineSmall?.merge(
                            GoogleFonts.righteous(
                                color: context.color.opposite),
                          ),
                        ),
                      ),
                      if (value! > ResponsiveState.sm)
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: sections
                                .map(
                                  (e) => Padding(
                                    padding: horizontal10,
                                    child: SectionButton(
                                      text: e.label,
                                      onTap: () {
                                        final context = e.key.currentContext;
                                        if (context != null) {
                                          Scrollable.ensureVisible(
                                            e.key.currentContext!,
                                          );
                                        } else {
                                          print(
                                              "No context found for ${e.label}!");
                                        }
                                      },
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        )
                      else
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: DrawerButtonIcon(),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _CustomAppBarDelegate oldDelegate) {
    return oldDelegate.max != max ||
        oldDelegate.min != min ||
        oldDelegate.sections != sections;
  }
}
