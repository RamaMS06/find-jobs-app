
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class AddTaskUseCase {
  final TaskRepository repository;

  AddTaskUseCase(this.repository);

  Stream<String> call(
      DateTime currentDate, AddTaskEntity task, String userId) {
    return repository.addTask(currentDate, task, userId);
  }
}
