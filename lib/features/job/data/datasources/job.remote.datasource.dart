import 'package:find_job_app/core/core.dart';
import 'package:find_job_app/features/job/data/models/job.model.dart';

abstract class JobRemoteDataSource {
  Future<Result<JobModel>> findJobs({String? query, String? location});
}
