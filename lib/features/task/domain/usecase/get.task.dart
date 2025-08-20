import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class GetTaskUseCase {
  final TaskRepository repository;

  GetTaskUseCase(this.repository);

  Future<Result<List<TaskEntity?>>> call(DateTime date) async {
    return await repository.getTasks(date);
  }
}
