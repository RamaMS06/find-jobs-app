import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../common.dart';

enum RTextFieldVariant { normal, textArea }

class RTextField extends StatefulWidget {
  final String? hintText;
  final bool isMandatory;
  final String? title;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Widget? prefixIcon;
  final String? prefixText;
  final RTextFieldVariant variant;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;

  const RTextField({
    super.key,
    this.title,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.isMandatory = false,
    this.prefixIcon,
    this.prefixText,
    this.variant = RTextFieldVariant.normal,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.validator,
    this.textInputAction,
  });

  factory RTextField.textArea({
    Key? key,
    String? title,
    String? hintText,
    TextEditingController? controller,
    Function(String)? onChanged,
    Function(String)? onSubmitted,
    bool isMandatory = false,
    Widget? prefixIcon,
    String? prefixText,
    int? minLines,
    int? maxLines,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    TextInputAction? textInputAction,
  }) {
    return RTextField(
      key: key,
      title: title,
      hintText: hintText,
      controller: controller,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      isMandatory: isMandatory,
      prefixIcon: prefixIcon,
      prefixText: prefixText,
      variant: RTextFieldVariant.textArea,
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: validator,
      textInputAction: textInputAction,
    );
  }

  @override
  State<RTextField> createState() => _RTextFieldState();
}

class _RTextFieldState extends State<RTextField> {
  String? _errorText;
  bool get _isError => _errorText != null && _errorText!.isNotEmpty;

  // Remove setState from validator to avoid calling setState during build
  String? _setupValidator(String? val) {
    String? isValid = widget.validator?.call(val);
    // Only update _errorText if it has changed, and schedule setState after build
    if (_errorText != isValid) {
      _errorText = isValid;
      // Schedule setState after build phase to avoid exception
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) setState(() {});
      });
    }
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    final bool isTextArea = widget.variant == RTextFieldVariant.textArea;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.title ?? '',
                    style: RFont.subheading.h6.copyWith(
                      color: RColor.text.dark,
                    ),
                  ),
                  if (widget.isMandatory)
                    TextSpan(
                      text: ' *',
                      style: RFont.subheading.h6.copyWith(
                        color: RColor.text.danger,
                      ),
                    ),
                ],
              ),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: RColor.background.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: (_isError
                        ? RColor.background.danger
                        : RColor.background.dark)
                    .withOpacity(0.8),
                offset: const Offset(3, 4),
              ),
            ],
          ),
          child: TextFormField(
            validator: _setupValidator,
            controller: widget.controller,
            style: RFont.subheading.h6,
            onFieldSubmitted: (value) {
              widget.onSubmitted?.call(value);
            },
            cursorColor: RColor.text.dark,
            textInputAction: widget.textInputAction ?? TextInputAction.done,
            keyboardType: widget.keyboardType ??
                (isTextArea
                    ? TextInputType.multiline
                    : TextInputType.visiblePassword),
            minLines: isTextArea ? (widget.minLines ?? 4) : 1,
            maxLines: isTextArea ? (widget.maxLines ?? 8) : 1,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: (_isError
                          ? RColor.background.danger
                          : RColor.background.dark)
                      .withOpacity(0.8),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: (_isError
                          ? RColor.background.danger
                          : RColor.background.dark)
                      .withOpacity(0.8),
                ),
              ),
              isDense: !isTextArea,
              fillColor: RColor.background.white,
              prefixText: widget.prefixText ?? '',
              contentPadding: isTextArea
                  ? const EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                  : const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              hintStyle: RFont.subheading.h6.copyWith(
                color: RColor.text.lightdark,
              ),
              hintText: widget.hintText ?? '',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: (_isError
                          ? RColor.background.danger
                          : RColor.background.dark)
                      .withOpacity(0.8),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: (_isError
                          ? RColor.background.danger
                          : RColor.background.dark)
                      .withOpacity(0.8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: (_isError
                          ? RColor.background.danger
                          : RColor.background.dark)
                      .withOpacity(0.8),
                  width: 2,
                ),
              ),
              errorStyle: const TextStyle(
                height: 0,
                fontSize: 0.01,
              ),
              errorText: _isError ? "" : null,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
        if (_isError)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  EvaIcons.alertTriangle,
                  size: 12,
                  color: RColor.text.danger,
                ),
                const SizedBox(width: 4),
                RText(
                  _errorText ?? '',
                  style: RFont.body.small,
                  color: RColor.text.danger,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
