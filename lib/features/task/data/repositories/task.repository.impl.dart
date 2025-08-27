import 'package:find_job_app/features/task/data/datasources/task.datasource.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';
import 'package:find_job_app/features/task/data/models/task.model.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDataSource _source;

  TaskRepositoryImpl(this._source);

  @override
  Stream<String> addTask(
      DateTime currentDate, AddTaskEntity task, String userId) {
    return _source.addTask(currentDate, task, userId);
  }

  @override
  Stream<List<DateTime>> getDates(String userId) {
    return _source.getDates(userId);
  }

  @override
  Future<void> updateTaskStatus(
      String userId, String taskId, bool isDone) async {
    await _source.updateTaskStatus(userId, taskId, isDone);
  }

  @override
  Stream<List<TaskEntity?>> getTasks(DateTime date, String userId) {
    return _source.getTasks(date, userId).map(
          (taskModels) => taskModels.map((model) => model?.toEntity()).toList(),
        );
  }

  @override
  Future<void> deleteTask(String userId, String taskId) async {
    await _source.deleteTask(userId, taskId);
  }
}
