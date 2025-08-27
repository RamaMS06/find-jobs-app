// ignore_for_file: unnecessary_getters_setters

class TaskEntity {
  String? id;
  String? title;
  String? description;
  bool? _isReorder;
  DateTime? date;
  double? time;
  String? finishTime;
  String? estimatedTime;
  String? startTime;
  bool? isDone;
  bool? get isReorder => _isReorder;
  set isReorder(bool? value) => _isReorder = value;

  TaskEntity({
    this.id,
    this.title,
    this.description,
    this.date,
    this.time,
    this.finishTime,
    this.estimatedTime,
    this.startTime,
    this.isDone,
    bool? isReorder,
  }) : _isReorder = isReorder;
}
