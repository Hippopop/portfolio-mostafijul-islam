import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/data/models/project_structure/project_structure.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/my_projects_provider.dart';
import 'package:portfolio_mostafij/src/services/router/routes.dart';
import 'package:portfolio_mostafij/src/services/theme/extensions/colors_theme.dart';
import 'package:portfolio_mostafij/src/services/theme/extensions/extensions.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/list_extensions.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:portfolio_mostafij/src/utilities/widgets/custom_cursor.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (_, __, ___) => MaterialTwoSpecificationWrapper(
        state: context.responsiveState,
        child: Column(
          children: [
            Padding(
              padding: vertical16,
              child: Center(
                child: Text(
                  "· My Projects ·",
                  style: context.textTheme.headlineMedium?.merge(
                    GoogleFonts.sofia(
                      color: context.color.opposite,
                    ),
                  ),
                ),
              ),
            ),
            24.height,
            Consumer(builder: (context, ref, _) {
              final projectList = ref.read(myProjectsProvider);
              return StaggeredGrid.count(
                crossAxisCount: switch (context.responsiveState) {
                  ResponsiveState.ts => 1,
                  ResponsiveState.xs => 1,
                  ResponsiveState.sm => 2,
                  ResponsiveState.md => 2,
                  ResponsiveState.lg => 3,
                  ResponsiveState.xl => 3,
                },
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                children: [...projectList, ...projectList]
                    .indexed
                    .map(
                      (e) => StaggeredGridTile.count(
                        crossAxisCellCount: e.$1 == 4 ? 2 : 1,
                        mainAxisCellCount: 1,
                        child: SingleProjectWidget(item: e.$2),
                      ),
                    )
                    .toList(),
              );
              /* return GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: projectList.length * 2,
                itemBuilder: (context, index) {
                  final item = [...projectList, ...projectList][index];
                  return SingleProjectWidget(item: item);
                },
              ); */
            }),
          ],
        ),
      ),
    );
  }
}

class SingleProjectWidget extends StatefulWidget {
  const SingleProjectWidget({
    super.key,
    required this.item,
  });

  final ProjectStructure item;

  @override
  State<SingleProjectWidget> createState() => _SingleProjectWidgetState();
}

class _SingleProjectWidgetState extends State<SingleProjectWidget>
    with SingleTickerProviderStateMixin {
  late final _duration = Durations.short4;
  late final _imageKey = GlobalKey();
  late final _controller =
      AnimationController(vsync: this, duration: _duration);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: br6,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          log("Clicked on project - ${widget.item.projectName}");
          context.push("/project/${widget.item.projectName}");
        },
        onHover: (value) {
          setState(() {
            _isHovered = value;
          });
          if (value) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: CustomCursor(
          decorationSize: const Size.square(42),
          decoration: SizedBox.square(
            dimension: 42,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: context.color.primary),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: context.color.primary,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 7,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Transform.scale(
                    scale: 1 + (_controller.value * 0.1),
                    child: child,
                  ),
                  child: Image.network(
                    widget.item.coverPic,
                    key: _imageKey,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ColoredBox(
                  color: context.color.mainAccent,
                  child: Padding(
                    padding: horizontal24 + horizontal8 + vertical10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        10.height,
                        Text(
                          widget.item.projectName,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.headlineSmall?.copyWith(
                            color: context.color.theme,
                          ),
                        ),
                        // 6.height,
                        Expanded(
                          child: AnimatedSwitcher(
                            duration: _duration,
                            reverseDuration: _duration,
                            transitionBuilder: (child, animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: Transform.translate(
                                  offset: Offset(
                                      0.0, 0.0 - ((1 - animation.value) * 12)),
                                  child: child,
                                ),
                              );
                            },
                            child: _isHovered
                                ? Row(
                                    children: [
                                      Text(
                                        "Learn More",
                                        maxLines: 2,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            context.textTheme.bodySmall?.merge(
                                          GoogleFonts.poppins(
                                            color: context.color.theme
                                                .withAlpha(2000),
                                          ),
                                        ),
                                      ),
                                      12.width,
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 18,
                                        color:
                                            context.color.theme.withAlpha(2000),
                                      ),
                                    ],
                                  )
                                : Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      widget.item.shortDescription,
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.textTheme.bodySmall?.merge(
                                        GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: context.color.theme
                                              .withAlpha(150),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NetflixStyleProjectsSection extends StatefulWidget {
  const NetflixStyleProjectsSection({super.key});

  @override
  State<NetflixStyleProjectsSection> createState() =>
      _NetflixStyleProjectsSectionState();
}

class _NetflixStyleProjectsSectionState
    extends State<NetflixStyleProjectsSection> {
  late final Timer _autoScrollTimer;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        if (mounted) {
          _autoScrollTimer = Timer.periodic(
            const Duration(milliseconds: 500),
            _autoScrollSettingCallback,
          );
        }
      },
    );
  }

  bool _stopScroll = false;

  _autoScrollSettingCallback(Timer timer) {
    if (_scrollController.hasClients && !_stopScroll) {
      final currentPosition = _scrollController.offset;
      _scrollController.animateTo(
        currentPosition + 10,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _autoScrollTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: LayoutBuilder(builder: (context, constraints) {
        return MouseRegion(
          onEnter: (event) => setState(() {
            _stopScroll = true;
          }),
          onExit: (event) => setState(() {
            _stopScroll = false;
          }),
          child: ClipRRect(
            borderRadius: br12,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: [
                GestureDetector(
                  onTap: () => log("Tapped On Project Background!"),
                  child: SizedBox.expand(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1620646233562-f2a31ad24425?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMHN0YXJyeSUyMHNreXxlbnwwfHwwfHx8MA%3D%3D",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: -100,
                  bottom: -100,
                  child: SizedBox(
                    width: constraints.maxWidth,
                    child: AnimatedContainer(
                      duration: Durations.long1,
                      transform: _stopScroll
                          ? Matrix4.identity()
                          : Matrix4.skew(0.3, -0),
                      child: Padding(
                        padding: horizontal16,
                        child: Consumer(builder: (context, ref, _) {
                          final projectList = ref.read(myProjectsProvider);
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              final item =
                                  projectList.rotatedIndexedItem(index);
                              if (item == null) return null;
                              return _SingleNetflixProjectWidget(item: item);
                            },
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                SizedBox.expand(
                  child: IgnorePointer(
                    ignoring: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DecoratedBox(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white70,
                                Colors.white60,
                                Colors.white54,
                                Colors.white38,
                                Colors.white30,
                                Colors.white24,
                                Colors.white12,
                                Colors.white10,
                              ],
                            ),
                          ),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.1,
                            width: double.infinity,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white70,
                                Colors.white60,
                                Colors.white54,
                                Colors.white38,
                                Colors.white30,
                                Colors.white24,
                                Colors.white12,
                                Colors.white10,
                              ].reversed.toList(),
                            ),
                          ),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.1,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _SingleNetflixProjectWidget extends StatefulWidget {
  const _SingleNetflixProjectWidget({
    super.key,
    required this.item,
  });

  final ProjectStructure item;

  @override
  State<_SingleNetflixProjectWidget> createState() =>
      _SingleNetflixProjectWidgetState();
}

class _SingleNetflixProjectWidgetState
    extends State<_SingleNetflixProjectWidget>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this, duration: 400.ms);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        if (value) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ClipRRect(
            borderRadius: br12,
            child: Stack(
              children: [
                child ?? const SizedBox(),
                ColoredBox(
                  color: Color.lerp(
                    Colors.transparent,
                    Colors.black54,
                    _controller.value,
                  )!,
                  child: Opacity(
                    opacity: _controller.value,
                    child: SizedBox.expand(
                      child: Center(
                        child: IntrinsicWidth(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              4.height,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  widget.item.projectName,
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodyLarge?.merge(
                                    GoogleFonts.poppins(
                                      color: context.color.theme,
                                      decoration: TextDecoration.underline,
                                      decorationStyle:
                                          TextDecorationStyle.double,
                                      decorationColor: context.color.theme,
                                      decorationThickness: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: horizontal12,
                                child: Text(
                                  widget.item.shortDescription,
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                              Wrap(
                                spacing: 8,
                                children: [
                                  for (var link in widget.item.links)
                                    Theme(
                                      data: context.theme.copyWith(
                                        useMaterial3: true,
                                      ),
                                      child: IconButton(
                                        hoverColor: Colors.white24,
                                        onPressed: () => launchUrl(
                                          Uri.parse(link.link),
                                        ),
                                        icon: SizedBox.square(
                                          dimension: 20,
                                          child: Image.asset(
                                            link.store.icon,
                                            color: context.color.theme,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Tap for more details",
                                    style:
                                        context.textTheme.bodySmall?.copyWith(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  3.width,
                                  const Icon(
                                    Icons.keyboard_double_arrow_right_rounded,
                                    size: 18,
                                    color: Colors.white70,
                                  ),
                                ],
                              ),
                              4.height,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: SizedBox.square(
          dimension: 350,
          child: Image.network(
            widget.item.coverPic,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
