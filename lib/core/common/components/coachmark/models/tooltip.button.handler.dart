import '../core/util.dart';

/// A class that handles the tooltip button.
class UITooltipButtonHandler {
  UITooltipButtonHandler({
    this.label,
    this.onTap,
  });

  /// The label of the button.
  final String? label;

  /// The function that will be called when the button is tapped.
  final void Function(RTooltipNavigationController controller)? onTap;
}
