import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/data/datasources/task.datasource.dart';
import 'package:find_job_app/features/task/data/models/task.model.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDataSource _source;

  TaskRepositoryImpl(this._source);

  @override
  Future<Result<List<TaskEntity?>>> getTasks(DateTime date) async {
    final result = await _source.getTasks(date);
    return result.when(
      success: (datas) =>
          Result.success(datas.map((data) => data?.toEntity()).toList()),
      loading: () => const Result.loading(),
      failed: (error) => Result.failed(error),
    );
  }

  @override
  Future<Result<String>> addTask(DateTime currentDate, AddTaskEntity task) async {
    final result = await _source.addTask(currentDate, task);
    return result.when(
      success: (data) => Result.success(data),
      loading: () => const Result.loading(),
      failed: (error) => Result.failed(error),
    );
  }

  @override
  Future<Result<List<DateTime>>> getDates() async {
    final result = await _source.getDates();
    return result.when(
      success: (data) => Result.success(data),
      loading: () => const Result.loading(),
      failed: (error) => Result.failed(error),
    );
  }
}
