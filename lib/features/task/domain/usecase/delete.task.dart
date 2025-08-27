import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class DeleteTaskUseCase {
  final TaskRepository _taskRepository;

  DeleteTaskUseCase(this._taskRepository);

  Future<void> call(String userId, String taskId) async {
    return _taskRepository.deleteTask(userId, taskId);
  }
}
