import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';

part 'task.state.freezed.dart';

@freezed
sealed class TaskState with _$TaskState {
  const factory TaskState.initial() = _TaskInitial;
  const factory TaskState.loading() = _TaskLoading;
  const factory TaskState.tasksLoaded(List<TaskEntity> tasks) = _TasksLoaded;
  const factory TaskState.tasksEmpty() = _TasksEmpty;
  const factory TaskState.addingTask() = _AddingTask;
  const factory TaskState.taskAdded(List<TaskEntity> updatedTasks) = _TaskAdded;
  const factory TaskState.error(String message) = _TaskError;
  const factory TaskState.checkedTask() = _CheckedTask;
  const factory TaskState.taskChecked(TaskEntity? task) = _TaskChecked;
  const factory TaskState.errorChecked(String message) = _ErrorChecked;
}
