import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show RenderAligningShiftedBox;

class PageOverflow extends SingleChildRenderObjectWidget {
  const PageOverflow({
    super.key,
    this.width,
    this.height,
    this.alignment = Alignment.topLeft,
    required super.child,
  });

  final double? width;
  final double? height;
  final AlignmentGeometry alignment;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderPageOverflow(
      width: width,
      height: height,
      alignment: alignment,
      textDirection: Directionality.of(context),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderPageOverflow renderObject) {
    renderObject
      ..width = width
      ..height = height
      ..alignment = alignment
      ..textDirection = Directionality.of(context);
  }
}

class RenderPageOverflow extends RenderAligningShiftedBox {
  RenderPageOverflow({
    double? width,
    double? height,
    required super.alignment,
    required TextDirection super.textDirection,
    super.child,
  })  : _width = width,
        _height = height;

  double? _width;

  double? get width => _width;

  set width(double? value) {
    if (value != _width) {
      _width = value;
      markNeedsLayout();
    }
  }

  double? _height;

  double? get height => _height;

  set height(double? value) {
    if (value != _height) {
      _height = value;
      markNeedsLayout();
    }
  }

  @override
  void performLayout() {
    final width = _width ?? constraints.maxWidth;
    final height = _height ?? constraints.maxHeight;
    final childConstraints = constraints //
        .copyWith(minWidth: width, minHeight: height)
        .normalize();
    child!.layout(childConstraints, parentUsesSize: true);
    size = Size(
      math.max(width, child!.size.width),
      math.max(height, child!.size.height),
    );
    alignChild();
  }
}
