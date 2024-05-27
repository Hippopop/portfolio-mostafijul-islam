import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return TextButton(
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      style: TextButton.styleFrom(
          // textStyle: GoogleFonts.raleway(),
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
                  child: Text(
                    widget.text,
                    maxLines: 1,
                  ),
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
