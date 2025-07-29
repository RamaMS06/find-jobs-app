import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/home/domain/entities/job.entity.dart';
import 'package:find_job_app/features/home/domain/repositories/job.repository.dart';

class SearchJobUseCase {
  final JobRepository repository;

  SearchJobUseCase(this.repository);

  Future<Result<JobEntity?>> execute({String? query}) async {
    return await repository.searchJobs(query: query);
  }
}
