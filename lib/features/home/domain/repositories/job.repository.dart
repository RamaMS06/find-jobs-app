import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/home/domain/entities/job.entity.dart';

abstract class JobRepository {
  Future<Result<JobEntity?>> searchJobs({String? query});
}
