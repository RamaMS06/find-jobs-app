
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class GetTaskUseCase {
  final TaskRepository repository;

  GetTaskUseCase(this.repository);

  Stream<List<TaskEntity?>> call(DateTime date, String userId) {
    return repository.getTasks(date, userId);
  }
}
