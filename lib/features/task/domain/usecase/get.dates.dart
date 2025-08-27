import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class GetDatesUseCase {
  final TaskRepository repository;

  GetDatesUseCase(this.repository);

  Stream<List<DateTime>> call(String userId) {
    return repository.getDates(userId);
  }
}
