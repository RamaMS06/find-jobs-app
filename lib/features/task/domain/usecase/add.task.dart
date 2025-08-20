import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class AddTaskUseCase {
  final TaskRepository repository;

  AddTaskUseCase(this.repository);

  Future<Result<String>> call(TaskEntity task) async {
    return await repository.addTask(task);
  }
}
