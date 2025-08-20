
import 'package:find_job_app/core/core.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';

abstract class TaskRepository{
  Future<Result<List<TaskEntity?>>> getTasks(DateTime date);
  Future<Result<String>> addTask(TaskEntity task);
}