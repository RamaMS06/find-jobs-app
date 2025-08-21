import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/domain/repositories/task.repository.dart';

class GetDatesUseCase {
  final TaskRepository repository;

  GetDatesUseCase(this.repository);

  Future<Result<List<DateTime>>> call() async {
    return await repository.getDates();
  }
}
