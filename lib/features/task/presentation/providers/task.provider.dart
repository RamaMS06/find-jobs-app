import 'package:flutter_riverpod/flutter_riverpod.dart';

var selectableDateProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});
