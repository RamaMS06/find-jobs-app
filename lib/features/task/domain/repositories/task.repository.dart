
import 'package:find_job_app/core/core.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';

abstract class TaskRepository{
  Future<Result<List<TaskEntity?>>> getTasks(DateTime date);
  Future<Result<List<DateTime>>> getDates();
  Future<Result<String>> addTask(DateTime currentDate, AddTaskEntity task);
}