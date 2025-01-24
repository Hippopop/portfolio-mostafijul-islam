import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';

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
    const duration = Durations.short4;
    return GestureDetector(
      onTap: widget.onTap,
      child: InkWell(
        onTap: widget.onTap,
        onHover: (event) => setState(() {
          _isHovered = event;
        }),
        child: Center(
          child: Padding(
            padding: horizontal4,
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnimatedDefaultTextStyle(
                    duration: duration,
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: _isHovered
                          ? context.color.primary
                          : context.color.mainText,
                    ),
                    child: Center(
                      child: Padding(
                        padding: horizontal6 + vertical3,
                        child: Text(
                          widget.text,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.color.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: AnimatedSize(
                        duration: duration,
                        child: SizedBox(
                          height: 1,
                          width: _isHovered ? double.infinity : 0,
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
    );
  }
}
