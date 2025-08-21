// ignore_for_file: unnecessary_getters_setters

class TaskEntity {
  String? title;
  String? description;
  bool? _isReorder;
  String? hex;
  DateTime? date;
  double? time;
  String? finishTime;
  String? estimatedTime;
  String? startTime;

  bool? get isReorder => _isReorder;
  set isReorder(bool? value) => _isReorder = value;

  TaskEntity({
    this.title,
    this.description,
    this.date,
    this.time,
    this.hex,
    this.finishTime,
    this.estimatedTime,
    this.startTime,
    bool? isReorder,
  }) : _isReorder = isReorder;
}
