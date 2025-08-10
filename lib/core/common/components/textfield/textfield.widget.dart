import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../common.dart';

class RSearchField extends StatefulWidget {
  final String? hintText;

  final TextEditingController? controller;

  final Function(String)? onChanged;

  final Function(String)? onSubmitted;

  const RSearchField({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<RSearchField> createState() => _RSearchFieldState();
}

class _RSearchFieldState extends State<RSearchField> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: RColor.background.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: RColor.background.dark.withOpacity(0.8),
            offset: const Offset(3, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        style: RFont.subheading.h6,
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        onFieldSubmitted: (value) {
          widget.onSubmitted?.call(value);
        },
        cursorColor: RColor.text.dark,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          fillColor: RColor.background.white,
          prefixIcon: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              color: RColor.background.info,
              border: Border.all(
                color: RColor.background.dark,
                width: 2,
              ),
            ),
            child: Icon(
              EvaIcons.searchOutline,
              color: RColor.icon.white,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          prefixText: '  ',
          hintStyle: RFont.subheading.h6.copyWith(
            color: RColor.text.lightdark,
          ),
          hintText: widget.hintText ?? 'Search a job',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: RColor.background.dark.withOpacity(0.8),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: RColor.background.dark.withOpacity(0.8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: RColor.background.dark.withOpacity(0.8),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
