import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_job_app/features/task/presentation/controller/date.controller.dart';

/// Stream provider for real-time date updates
/// Usage in UI:
/// 
/// ```dart
/// Consumer(
///   builder: (context, ref, child) {
///     final dateStream = ref.watch(dateStreamProvider(userId));
///     
///     return StreamBuilder<List<DateTime>>(
///       stream: dateStream,
///       builder: (context, snapshot) {
///         if (snapshot.connectionState == ConnectionState.waiting) {
///           return CircularProgressIndicator();
///         }
///         
///         if (snapshot.hasError) {
///           return Text('Error: ${snapshot.error}');
///         }
///         
///         final dates = snapshot.data ?? [];
///         return CalendarWidget(dates: dates);
///       },
///     );
///   },
/// )
/// ```
final dateStreamProvider = StreamProvider.family<List<DateTime>, String>((ref, userId) {
  final controller = ref.watch(dateControllerProvider.notifier);
  return controller.getDates(userId);
});
