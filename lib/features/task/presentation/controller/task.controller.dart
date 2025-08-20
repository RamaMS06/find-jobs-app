
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/usecase/add.task.dart';
import 'package:find_job_app/features/task/domain/usecase/get.task.dart';
import 'package:find_job_app/features/task/presentation/controller/task.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task.controller.g.dart';

@riverpod
class TaskController extends _$TaskController{
  late GetTaskUseCase _getTaskUseCase;
  late AddTaskUseCase _addTaskUseCase;

  @override
  TaskState build() {
    _getTaskUseCase = sl<GetTaskUseCase>();
    _addTaskUseCase = sl<AddTaskUseCase>();
    return const TaskState.initial();
  }

  Future<void> getTasks(DateTime date) async {
    state = const TaskState.loading();
    final result = await _getTaskUseCase.call(date);
    result.when(success: (data) {
      state = TaskState.success(data);
      if (data.isEmpty) {
        state = const TaskState.empty();
      }
    },
     failed: (error) {
      state = TaskState.failed(error);
    }, loading: () {
      state = const TaskState.loading();
    });
  }

  Future<void> addTask(TaskEntity task) async {
    state = const TaskState.loading();
    final result = await _addTaskUseCase.call(task);
    result.when(success: (data) {
      state = const TaskState.success(null);
    }, failed: (error) {
      state = TaskState.failed(error);
    }, loading: () {
      state = const TaskState.loading();
    });
  }
}