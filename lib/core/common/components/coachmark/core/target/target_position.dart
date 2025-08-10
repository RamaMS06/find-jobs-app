import 'dart:math';
import 'dart:ui';

class TargetPosition {
  TargetPosition(this.size, this.offset);
  final Size size;
  final Offset offset;

  Offset get center => Offset(
        offset.dx + size.width / 2,
        offset.dy + size.height / 2,
      );

  double getBiggerSpaceBorder(Size size) {
    final maxDistanceX =
        center.dx > size.width / 2 ? center.dx : size.width - center.dx;
    final maxDistanceY =
        center.dy > size.height / 2 ? center.dy : size.height - center.dy;
    return max(maxDistanceX, maxDistanceY);
  }
}
