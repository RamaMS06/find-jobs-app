// ignore_for_file: inference_failure_on_untyped_parameter,
// ignore_for_file: cast_nullable_to_non_nullable

import 'package:find_job_app/core/common/components/coachmark/core/target/target_position.dart';
import 'package:find_job_app/core/common/components/coachmark/models/tooltip.target.focus.dart';
import 'package:flutter/widgets.dart';


// ignore: constant_identifier_names
enum ShapeLightFocus { Circle, RRect }

TargetPosition? getTargetCurrent(
  RTargetFocus target, {
  bool rootOverlay = false,
}) {
  final key = target.keyTarget;

  try {
    late List<RenderBox> renderBoxRed;
    late List<Size> size;
    BuildContext? context;

    var offset = Offset.zero;
    for (final val in key) {
      renderBoxRed = key
          .map((e) => e.currentContext!.findRenderObject() as RenderBox)
          .toList();
      size = renderBoxRed.map((e) => e.size).toList();
      if (rootOverlay) {
        context = val.currentContext!
            .findRootAncestorStateOfType<OverlayState>()
            ?.context;
      } else {
        context = val.currentContext!
            .findAncestorStateOfType<NavigatorState>()
            ?.context;
      }
    }

    if (context != null) {
      offset = renderBoxRed.first.localToGlobal(
        Offset.zero,
        ancestor: context.findRenderObject(),
      );
    } else {
      offset = renderBoxRed.first.localToGlobal(Offset.zero);
    }

    return TargetPosition(size.last, offset);
  } catch (e) {
    throw NotFoundTargetException(target.identify);
  }
}

abstract class RTooltipNavigationController {
  void next();
  void previous();
  void skip();
}

extension StateExt on State {
  void safeSetState(VoidCallback call) {
    if (mounted) {
      // ignore: invalid_use_of_protected_member
      setState(call);
    }
  }
}

class NotFoundTargetException extends FormatException {
  NotFoundTargetException(identify)
      : super('It was not possible to obtain target position ($identify).');
}

void postFrame(VoidCallback callback) {
  Future.delayed(Duration.zero, callback);
}

extension NullableExt<T> on T? {
  void let(void Function(T it) callback) {
    if (this != null) {
      callback(this as T);
    }
  }
}
