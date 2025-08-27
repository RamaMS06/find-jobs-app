import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/presentation/controller/task.controller.dart';

/// Stream provider for real-time task updates
/// Usage in UI:
///
/// ```dart
/// Consumer(
///   builder: (context, ref, child) {
///     final taskStream = ref.watch(taskStreamProvider(TaskStreamParams(date, userId)));
///
///     return StreamBuilder<List<TaskEntity?>>(
///       stream: taskStream,
///       builder: (context, snapshot) {
///         if (snapshot.connectionState == ConnectionState.waiting) {
///           return CircularProgressIndicator();
///         }
///
///         if (snapshot.hasError) {
///           return Text('Error: ${snapshot.error}');
///         }
///
///         final tasks = snapshot.data ?? [];
///         return ListView.builder(
///           itemCount: tasks.length,
///           itemBuilder: (context, index) {
///             final task = tasks[index];
///             return TaskTile(task: task);
///           },
///         );
///       },
///     );
///   },
/// )
/// ```
class TaskStreamParams {
  final DateTime date;
  final String userId;

  TaskStreamParams(this.date, this.userId);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskStreamParams &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          userId == other.userId;

  @override
  int get hashCode => date.hashCode ^ userId.hashCode;
}

final taskStreamProvider = StreamProvider.family<List<TaskEntity?>, TaskStreamParams>((ref, params) {
  final controller = ref.watch(taskControllerProvider.notifier);
  return controller.getTasks(params.date, params.userId);
});
