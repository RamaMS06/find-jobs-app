import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.state.freezed.dart';

@freezed
class TaskState<T> with _$TaskState<T> {
  const factory TaskState.initial() = _TaskInitial;
  const factory TaskState.loading() = _TaskLoading;
  const factory TaskState.success(T data) = _TaskSuccess;
  const factory TaskState.failed(String message) = _TaskFailed;
  const factory TaskState.empty() = _TaskEmpty;
}
