
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/data/models/task.model.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';

abstract class TaskDataSource{
  Future<Result<List<TaskModel?>>> getTasks(DateTime date);
  Future<Result<List<DateTime>>> getDates();
  Future<Result<String>> addTask(DateTime currentDate, AddTaskEntity task);
}