// ignore_for_file: prefer_asserts_with_message

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../util.dart';

class RCustomTargetContentPosition {
  RCustomTargetContentPosition({
    this.top,
    this.left,
    this.right,
    this.bottom,
  });

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  @override
  String toString() {
    return '''
CustomTargetPosition{top: $top, left: $left, right: $right, bottom: $bottom}''';
  }
}

enum ContentAlign { top, bottom, left, right, custom }

typedef TargetContentBuilder = Widget Function(
  BuildContext context,
  RTooltipNavigationController controller,
);

class TargetContent {
  TargetContent({
    this.align = ContentAlign.bottom,
    this.padding = const EdgeInsets.all(20),
    this.child,
    this.customPosition,
    this.builder,
  }) : assert(!(align == ContentAlign.custom && customPosition == null));

  final ContentAlign align;
  final EdgeInsets padding;
  final RCustomTargetContentPosition? customPosition;
  final Widget? child;
  final TargetContentBuilder? builder;

  @override
  String toString() {
    return 'ContentTarget{align: $align, child: $child}';
  }
}
