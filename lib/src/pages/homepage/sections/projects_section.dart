import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/services/theme/extensions/colors_theme.dart';
import 'package:portfolio_mostafij/src/services/theme/extensions/extensions.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/list_extensions.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  late final Timer _autoScrollTimer;
  late final ScrollController _scrollController;

  final _imageList = [
    "https://images.unsplash.com/photo-1707949576610-a373542c77df?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1707968781621-db823bedc3d8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1707985664665-b09c7c876ed7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1708006252090-e5db494aa373?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5OHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1707912079134-becf5a3598e2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDN8fHxlbnwwfHx8fHw%3D",
    "https://images.unsplash.com/photo-1706530664711-ad4704cd27f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjh8fHxlbnwwfHx8fHw%3D",
  ];

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
                  style: context.text.headlineMedium?.merge(
                    GoogleFonts.sofia(
                      color: context.color.opposite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
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
                          onTap: () => print("Tapped On Project Background!"),
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
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                  ),
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    final item =
                                        _imageList.rotatedIndexedItem(index);
                                    if (item == null) return null;
                                    return SingleProjectWIdget(item: item);
                                  },
                                ),
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
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProjectWIdget extends StatefulWidget {
  const SingleProjectWIdget({
    super.key,
    required this.item,
  });

  final String item;

  @override
  State<SingleProjectWIdget> createState() => _SingleProjectWIdgetState();
}

class _SingleProjectWIdgetState extends State<SingleProjectWIdget>
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  "Project Name",
                                  textAlign: TextAlign.center,
                                  style: context.text.bodyLarge?.merge(
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
            widget.item,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
