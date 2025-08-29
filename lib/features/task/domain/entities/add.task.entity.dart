class AddTaskEntity {
  final String? id;
  final String title;
  final String? desc;
  final String? startTime;
  final String? estimatedInMinutes;
  final String? finishTime;
  final bool? isDone;

  AddTaskEntity({
    this.id,
    required this.title,
    this.desc,
    this.startTime,
    this.estimatedInMinutes,
    this.finishTime,
    this.isDone,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': desc,
        'startTime': startTime,
        'estimatedInMinutes': estimatedInMinutes,
        'finishTime': finishTime,
      };
}
