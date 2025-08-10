import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../common.dart';

/// The custom switcher.
class RSwitch extends StatefulWidget {
  const RSwitch({
    super.key,
    this.value = false,
    this.onChanged,
    this.prefixText,
    this.suffixText,
    this.innerText,
    this.prefixIcon,
    this.suffixIcon,
  });

  /// The inner text of the switch.
  final String? innerText;

  /// Whether the switch is active.
  final bool value;

  /// The prefix text of the switch.
  final String? prefixText;

  /// The prefix icon of the switch.
  final IconData? prefixIcon;

  /// The suffix text of the switch.
  final String? suffixText;

  /// The suffix icon of the switch.
  final IconData? suffixIcon;

  /// The on tap callback of the switch.
  final Function(bool)? onChanged;

  @override
  State<RSwitch> createState() => _RSwitchState();
}

class _RSwitchState extends State<RSwitch> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.prefixText != null)
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: RText(
              widget.prefixText!,
              style: RFont.body,
              color: RColor.background.dark,
            ),
          ),
        GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            setState(() {
              _value = !_value;
            });
            widget.onChanged?.call(_value);
          },
          child: IntrinsicHeight(
            child: IntrinsicWidth(
              child: AnimatedContainer(
                constraints: const BoxConstraints(
                  minHeight: 16,
                  minWidth: 28,
                  maxHeight: 24,
                ),
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.all(
                  widget.innerText != null ? 4 : 2,
                ),
                decoration: BoxDecoration(
                  color: widget.value
                      ? RColor.background.info
                      : RColor.background.dark,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    // Labels
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.only(
                        left: widget.value ? 4 : 24,
                        right: widget.value ? 24 : 4,
                      ),
                      child: widget.innerText != null
                          ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (widget.prefixIcon != null && widget.value)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Icon(
                                    widget.prefixIcon!,
                                    size: 16,
                                    color: RColor.background.white,
                                  ),
                                ),
                              RText(
                                  widget.innerText ?? '',
                                  style: RFont.body.bold,
                                  color: RColor.background.white,
                                ),
                              if (widget.suffixIcon != null && !widget.value)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Icon(
                                    widget.suffixIcon!,
                                    size: 16,
                                    color: RColor.background.white,
                                  ),
                                ),
                            ],
                          )
                          : const SizedBox.shrink(),
                    ),

                    // Sliding white thumb
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 200),
                      alignment: widget.value
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        width: widget.innerText != null ? 16 : 12,
                        height: widget.innerText != null ? 16 : 12,
                        decoration: BoxDecoration(
                          color: RColor.background.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (widget.suffixText != null)
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: RText(
              widget.suffixText!,
              style: RFont.body,
              color: RColor.background.dark,
            ),
          ),
      ],
    );
  }
}
