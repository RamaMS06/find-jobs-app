
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class CheckedTaskUseCase {
  final TaskRepository _taskRepository;

  CheckedTaskUseCase(this._taskRepository);

  Future<void> call(String userId, String taskId, bool isDone) async {
    await _taskRepository.updateTaskStatus(userId, taskId, isDone);
  }
}
