import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/my_projects_provider.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/svg_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SingleProjectWindow extends StatelessWidget {
  const SingleProjectWindow({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return ResponsiveParentWrapper(
      builder: (context, currentState) => Align(
        alignment: Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
            minWidth: currentState.min * 0.4,
          ).normalize(),
          child: Material(
            color: context.color.mainBackground,
            child: Consumer(
              builder: (context, ref, child) {
                final projectList = ref.read(myProjectsProvider);
                final project = projectList.firstWhere(
                  (element) => element.projectName == id,
                );
                return Padding(
                  padding: horizontal16,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _TopBarArea(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: horizontal8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                32.height,
                                Text(
                                  project.projectName,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      context.textTheme.headlineSmall?.copyWith(
                                    color: context.color.opposite,
                                  ),
                                ),
                                8.height,
                                Text(
                                  project.shortDescription,
                                  maxLines: 50,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyMedium?.merge(
                                    GoogleFonts.poppins(
                                      fontSize: 14,
                                      color:
                                          context.color.opposite.withAlpha(150),
                                    ),
                                  ),
                                ),
                                16.height,
                                ClipRRect(
                                  borderRadius: br8,
                                  child: Image.network(
                                    project.coverPic,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                16.height,
                                Text(
                                  "About",
                                  maxLines: 1,
                                  style: TextStyle(
                                    wordSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                    color: context.color.extra,
                                  ),
                                ),
                                8.height,
                                Text(
                                  project.projectDetails,
                                  maxLines: 50,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyMedium?.merge(
                                    GoogleFonts.poppins(
                                      fontSize: 14,
                                      color:
                                          context.color.opposite.withAlpha(150),
                                    ),
                                  ),
                                ),
                                16.height,
                                ...project.links
                                    .map(
                                      (e) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox.square(
                                                dimension: 24,
                                                child:
                                                    Image.asset(e.store.icon),
                                              ),
                                              8.width,
                                              Text(
                                                e.store.name,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  wordSpacing: 0,
                                                  fontWeight: FontWeight.bold,
                                                  color: context.color.extra,
                                                ),
                                              ),
                                            ],
                                          ),
                                          8.height,
                                          SimpleClickableTextWeb(
                                            text: e.link,
                                            onTap: () => launchUrl(
                                              Uri.parse(e.link),
                                            ),
                                          ),
                                          16.height,
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _TopBarArea extends StatelessWidget {
  const _TopBarArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        24.height,
        Padding(
          padding: horizontal8,
          child: Row(
            children: [
              IconButton(
                onPressed: () => context.pop(),
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: context.color.extra.withAlpha(200),
                ),
              ),
              const Spacer(),
              SimpleClickableTextWeb(
                text: "Back To Projects.",
                onTap: () => context.pop(),
              )
            ],
          ),
        ),
        Divider(
          thickness: 0.8,
          color: context.color.extra.withAlpha(100),
        ),
      ],
    );
  }
}

class SimpleClickableTextWeb extends StatefulWidget {
  const SimpleClickableTextWeb({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  State<SimpleClickableTextWeb> createState() => _SimpleClickableTextWebState();
}

class _SimpleClickableTextWebState extends State<SimpleClickableTextWeb> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: br4,
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: Padding(
        padding: all4,
        child: AnimatedDefaultTextStyle(
          duration: Durations.short4,
          style: context.textTheme.bodyMedium!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            decoration:
                _hovered ? TextDecoration.underline : TextDecoration.none,
          ),
          child: Text(
            widget.text,
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
