import 'package:find_job_app/core/common/components/checkbox/checkbox.dart';
import 'package:find_job_app/core/common/components/text/text.widget.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';

class RActionCheckbox extends StatefulWidget {
  const RActionCheckbox({super.key});

  @override
  State<RActionCheckbox> createState() => _RActionCheckboxState();
}

class _RActionCheckboxState extends State<RActionCheckbox> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: RColor.background.lightdark,
        ),
        color: RColor.background.white,
        boxShadow: [
          BoxShadow(
            color: RColor.background.dark.withOpacity(0.8),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          RCheckbox(value: true, onChanged: (value) {}),
          const SizedBox(width: 8),
          RText('Action')
        ],
      ),
    );
  }
}