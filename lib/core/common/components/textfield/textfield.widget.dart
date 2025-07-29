import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../common.dart';

class RMSearchField extends StatefulWidget {
  final String? hintText;

  final TextEditingController? controller;

  final Function(String)? onChanged;

  final Function(String)? onSubmitted;

  const RMSearchField({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<RMSearchField> createState() => _RMSearchFieldState();
}

class _RMSearchFieldState extends State<RMSearchField> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: RMColor.background.light,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: RMColor.background.dark.withOpacity(0.8),
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        style: RMFont.subheading.h6,
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        onFieldSubmitted: (value) {
          widget.onSubmitted?.call(value);
        },
        cursorColor: RMColor.text.dark,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          prefixIcon: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              color: RMColor.background.success,
              border: Border.all(
                color: RMColor.background.dark,
                width: 2,
              ),
            ),
            child: Icon(
              EvaIcons.searchOutline,
              color: RMColor.icon.white,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          prefixText: '  ',
          hintStyle: RMFont.subheading.h6.copyWith(
            color: RMColor.text.lightdark,
          ),
          hintText: widget.hintText ?? 'Search a job',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: RMColor.background.dark,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: RMColor.background.dark,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: RMColor.background.dark,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
