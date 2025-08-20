// ignore_for_file: unnecessary_getters_setters

class TaskEntity {
  String? title;
  String? description;
  bool? _isReorder;
  int? colorHex;
  DateTime? date;
  double? time;

  bool? get isReorder => _isReorder;
  set isReorder(bool? value) => _isReorder = value;

  TaskEntity({
    this.title,
    this.description,
    this.date,
    this.time,
    this.colorHex,
    bool? isReorder,
  }) : _isReorder = isReorder;

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'date': date,
        'time': time,
        'color': colorHex,
      };
}
