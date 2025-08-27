// ignore_for_file: use_build_context_synchronously

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:find_job_app/config/router/provider.dart';
import 'package:find_job_app/core/common/components/component.dart';
import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/tokens/fonts/font.token.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/presentation/controller/task.controller.dart';
import 'package:find_job_app/features/task/presentation/providers/task.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetTask extends ConsumerStatefulWidget {
  final ScrollController scrollController;
  const BottomSheetTask({super.key, required this.scrollController});

  @override
  ConsumerState<BottomSheetTask> createState() => _BottomSheetTaskState();
}

class _BottomSheetTaskState extends ConsumerState<BottomSheetTask> {
  TimeOfDay? _selectStartTime;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _estimatedInMinutesController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    final now = TimeOfDay.now();
    _selectStartTime = now;
    _startTimeController.text = _formatTimeOfDay(_selectStartTime);
  }

  Future<void> _pickTime(BuildContext context) async {
    TimeOfDay tempPicked = _selectStartTime ?? TimeOfDay.now();
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
                      _startTimeController.text =
                          _formatTimeOfDay(TimeOfDay(
                        hour: tempDateTime.hour,
                        minute: tempDateTime.minute,
                      ));
                      _selectStartTime = TimeOfDay(
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

  Widget _buildSaveButton() {
    final addTaskState = ref.watch(taskControllerProvider);

    return addTaskState.maybeWhen(
      orElse: () => RButton(
        text: 'Save Task',
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            final currentDate = ref.watch(selectableDateProvider);
            await ref.read(taskControllerProvider.notifier).addTask(
                currentDate,
                AddTaskEntity(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  title: _titleController.text,
                  desc: _descriptionController.text,
                  startTime: _formatTimeOfDay(_selectStartTime),
                  estimatedInMinutes: _estimatedInMinutesController.text,
                ),
                ref.read(currentUserProvider)!.id ?? '');

            // No need to manually refresh - StreamBuilder will handle real-time updates
            Navigator.of(context).pop();
          }
        },
      ),
      addingTask: () => const RButton(
        isLoading: true,
      ),
    );
  }

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
                    controller: _titleController,
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
                    controller: _descriptionController,
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
                        controller: _startTimeController,
                        onChanged: (value) {
                          setState(() {
                            _selectStartTime =
                                TimeOfDay.fromDateTime(DateTime.parse(value));
                          });
                        },
                        // suffixIcon: const Icon(Icons.access_time),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RTextField(
                    controller: _estimatedInMinutesController,
                    title: 'Estimated in Minutes',
                    isMandatory: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Estimated in Minutes is required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 24,
            left: 16,
            child: _buildSaveButton(),
          ),
        ],
      ),
    );
  }
}
