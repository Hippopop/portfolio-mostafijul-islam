import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';

class CustomCursor extends StatefulWidget {
  const CustomCursor({
    super.key,
    this.deviation,
    this.decoration,
    this.defaultColor,
    this.decorationSize,
    required this.child,
  });

  final Widget child;
  final Size? deviation;
  final Widget? decoration;
  final Color? defaultColor;
  final Size? decorationSize;

  @override
  State<CustomCursor> createState() => _CustomCursorState();
}

class _CustomCursorState extends State<CustomCursor> {
  bool isHovering = false;
  Offset? offset;

  @override
  Widget build(BuildContext context) {
    final size = widget.decorationSize ?? const Size.square(32);
    final decoration = widget.decoration ??
        DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: widget.defaultColor ?? context.color.primaryAccent,
            ),
          ),
          child: const SizedBox.expand(),
        );
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovering = true;
          offset = event.localPosition;
        });
      },
      onHover: (event) {
        setState(() {
          offset = event.localPosition;
        });
      },
      onExit: (event) {
        setState(() {
          offset = null;
          isHovering = false;
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          widget.child,
          if (offset != null)
            AnimatedPositioned(
              duration: Durations.short3,
              left: (offset!.dx) - (widget.deviation?.width ?? size.height / 2),
              top: (offset!.dy) - (widget.deviation?.height ?? size.width / 2),
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: AnimatedSize(
                    duration: Durations.medium1,
                    child: SizedBox(
                      width: (isHovering && offset != null) ? size.width : 0,
                      height: (isHovering && offset != null) ? size.height : 0,
                      child: decoration,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
