
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class UpdateTaskUseCase {
  final TaskRepository _taskRepository;

  UpdateTaskUseCase(this._taskRepository);

  Future<void> call(String userId, String taskId, TaskEntity task) async {
    await _taskRepository.updateTask(userId, taskId, task);
  }
}
