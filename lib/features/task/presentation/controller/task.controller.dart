import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/usecase/add.task.dart';
import 'package:find_job_app/features/task/domain/usecase/update.task.dart';
import 'package:find_job_app/features/task/domain/usecase/delete.task.dart';
import 'package:find_job_app/features/task/domain/usecase/get.task.dart';
import 'package:find_job_app/features/task/presentation/controller/task.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task.controller.g.dart';

@riverpod
class TaskController extends _$TaskController {
  late GetTaskUseCase _getTaskUseCase;
  late AddTaskUseCase _addTaskUseCase;
  late UpdateTaskUseCase _updateTaskUseCase;
  late DeleteTaskUseCase _deleteTaskUseCase;

  @override
  TaskState build() {
    _getTaskUseCase = sl<GetTaskUseCase>();
    _addTaskUseCase = sl<AddTaskUseCase>();
    _updateTaskUseCase = sl<UpdateTaskUseCase>();
    _deleteTaskUseCase = sl<DeleteTaskUseCase>();
    return const TaskState.initial();
  }

  Stream<List<TaskEntity?>> getTasks(DateTime date, String userId) {
    return _getTaskUseCase.call(date, userId);
  }

  Future<void> addTask(
      DateTime currentDate, AddTaskEntity task, String userId) async {
    state = const TaskState.addingTask();
    final result = _addTaskUseCase.call(currentDate, task, userId);
    result.listen((data) {
      state = const TaskState.taskAdded([]);
    });
  }

  Future<void> updateTask(String userId, String taskId, TaskEntity task) async {
    await _updateTaskUseCase.call(userId, taskId, task);
  }

  Future<void> deleteTask(String userId, String taskId) async {
    await _deleteTaskUseCase.call(userId, taskId);
  }
}
