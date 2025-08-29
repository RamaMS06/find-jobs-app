
import 'package:find_job_app/features/task/data/models/task.model.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';

abstract class TaskDataSource {
  Stream<List<TaskModel?>> getTasks(DateTime date, String userId);
  Stream<List<DateTime>> getDates(String userId);
  Stream<String> addTask(DateTime currentDate, AddTaskEntity task, String userId);
  Future<void> updateTask(String userId, String taskId, TaskEntity task);
  Future<void> deleteTask(String userId, String taskId);
}
