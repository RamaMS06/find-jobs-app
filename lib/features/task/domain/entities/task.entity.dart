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

  TaskEntity copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? date,
    double? time,
    String? finishTime,
    String? estimatedTime,
    String? startTime,
    bool? isDone,
    bool? isReorder,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      time: time ?? this.time,
      finishTime: finishTime ?? this.finishTime,
      estimatedTime: estimatedTime ?? this.estimatedTime,
      startTime: startTime ?? this.startTime,
      isDone: isDone ?? this.isDone,
      isReorder: isReorder ?? this.isReorder,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date?.toIso8601String(),
      'time': time,
      'finishTime': finishTime,
      'estimatedTime': estimatedTime,
      'startTime': startTime,
      'isDone': isDone,
      'isReorder': isReorder,
    };
  }
}
