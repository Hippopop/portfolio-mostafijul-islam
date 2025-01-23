import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(
    this.path, {
    super.key,
    this.size,
    this.color,
    this.useColorFilter = true,
  });

  final String path;
  final double? size;
  final Color? color;
  final bool useColorFilter;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size ?? 24,
      child: FittedBox(
        fit: BoxFit.cover,
        alignment: Alignment.center,
        child: SvgPicture.asset(
          path,
          colorFilter: (useColorFilter)
              ? ColorFilter.mode(
                  color ?? Theme.of(context).iconTheme.color ?? Colors.black,
                  BlendMode.srcIn,
                )
              : null,
        ),
      ),
    );
  }
}
