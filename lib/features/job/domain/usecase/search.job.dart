import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/job/domain/entities/job.entity.dart';
import 'package:find_job_app/features/job/domain/repositories/job.repository.dart';

class SearchJobUseCase {
  final JobRepository repository;

  SearchJobUseCase(this.repository);

  Future<Result<JobEntity?>> call({String? query, String? location}) async {
    return await repository.searchJobs(query: query, location: location);
  }
}
