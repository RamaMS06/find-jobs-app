import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/core/common/components/component.dart';
import 'package:find_job_app/core/common/components/container/container.shadow.widget.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/tokens/fonts/font.token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

class ColorTask {
  final Color color;
  bool isSelected;

  ColorTask({
    required this.color,
    this.isSelected = false,
  });

  static List<ColorTask> colors = [
    ColorTask(color: const Color(0xFFFFCDD2)),
    ColorTask(color: const Color(0xFFE1BEE7)),
    ColorTask(color: const Color(0xFFBBDEFB)),
    ColorTask(color: const Color(0xFFDCEDC8)),
  ];
}

class BottomSheetTask extends ConsumerStatefulWidget {
  final ScrollController scrollController;
  const BottomSheetTask({super.key, required this.scrollController});

  @override
  ConsumerState<BottomSheetTask> createState() => _BottomSheetTaskState();
}

class _BottomSheetTaskState extends ConsumerState<BottomSheetTask> {
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    final now = TimeOfDay.now();
    _selectedTime = now;
  }

  Future<void> _pickTime(BuildContext context) async {
    TimeOfDay tempPicked = _selectedTime ?? TimeOfDay.now();
    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext ctx) {
        DateTime now = DateTime.now();
        DateTime initialDateTime = DateTime(
          now.year,
          now.month,
          now.day,
          tempPicked.hour,
          tempPicked.minute,
        );
        DateTime tempDateTime = initialDateTime;
        return Container(
          height: 250,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  child: RText(
                    'Done',
                    style: RFont.subheading.h6,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedTime = TimeOfDay(
                        hour: tempDateTime.hour,
                        minute: tempDateTime.minute,
                      );
                    });
                    Navigator.of(ctx).pop();
                  },
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: initialDateTime,
                  use24hFormat: true,
                  selectionOverlayBuilder: (context,
                      {required int columnCount, required int selectedIndex}) {
                    return Container(
                      decoration: BoxDecoration(
                        color: RColor.background.dark.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    );
                  },
                  onDateTimeChanged: (DateTime newDateTime) {
                    tempDateTime = newDateTime;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatTimeOfDay(TimeOfDay? time) {
    if (time == null) return '';
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('HH:mm').format(dt);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: kBottomNavigationBarHeight + 16),
            child: SingleChildScrollView(
              controller: widget.scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RTextField(
                    title: 'Title',
                    isMandatory: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Title is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RTextField.textArea(
                    title: 'Description',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () => _pickTime(context),
                    child: AbsorbPointer(
                      child: RTextField(
                        isMandatory: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Start Time is required';
                          }
                          return null;
                        },
                        prefixText: '  ',
                        prefixIcon: GestureDetector(
                          onTap: () => _pickTime(context),
                          child: Container(
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
                              EvaIcons.clockOutline,
                              color: RColor.icon.white,
                            ),
                          ),
                        ),
                        title: 'Start Time',
                        controller: TextEditingController(
                          text: _formatTimeOfDay(_selectedTime),
                        ),
                        // suffixIcon: const Icon(Icons.access_time),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RTextField(
                    title: 'Estimated in Minutes',
                    isMandatory: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Estimated in Minutes is required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RText(
                    'Select Color',
                    style: RFont.subheading.h6,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    spacing: 8,
                    runSpacing: 8,
                    children: List.generate(
                      ColorTask.colors.length,
                      (index) => RContainerShadow(
                        height: 25,
                        width: 25,
                        onTap: () {
                          setState(() {
                            for (var color in ColorTask.colors) {
                              color.isSelected = false;
                            }
                            ColorTask.colors[index].isSelected = true;
                          });
                        },
                        color: ColorTask.colors[index].color,
                        borderRadius: 999,
                        child: ColorTask.colors[index].isSelected
                            ? Icon(
                                EvaIcons.checkmark,
                                size: 16,
                                color: RColor.icon.white,
                              )
                            : const SizedBox.shrink(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 24,
            left: 16,
            child: RButton(
              text: 'Save Task',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
