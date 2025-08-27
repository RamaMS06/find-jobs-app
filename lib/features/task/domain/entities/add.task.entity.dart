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
    String? finishTime,
    this.isDone,
  }) : finishTime = finishTime ?? _calculateFinishTime(startTime, estimatedInMinutes);

  static String? _calculateFinishTime(
      String? startTime, String? estimatedInMinutes) {
    if (startTime == null || estimatedInMinutes == null) return null;
    try {
      // Assume startTime is in "HH:mm" format
      final parts = startTime.split(':');
      if (parts.length != 2) return null;
      final hour = int.tryParse(parts[0]);
      final minute = int.tryParse(parts[1]);
      final duration = int.tryParse(estimatedInMinutes);
      if (hour == null || minute == null || duration == null) return null;

      final startDateTime = DateTime(0, 1, 1, hour, minute);
      final finishDateTime = startDateTime.add(Duration(minutes: duration));
      final finishHour = finishDateTime.hour.toString().padLeft(2, '0');
      final finishMinute = finishDateTime.minute.toString().padLeft(2, '0');
      return '$finishHour:$finishMinute';
    } catch (_) {
      return null;
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': desc,
        'startTime': startTime,
        'estimatedInMinutes': estimatedInMinutes,
        'finishTime': finishTime,
      };
}
