String? calculateFinishTime(String? startTime, String? estimatedInMinutes) {
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
