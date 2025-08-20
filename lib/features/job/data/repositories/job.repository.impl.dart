import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/job/data/datasources/job.remote.datasource.dart';
import 'package:find_job_app/features/job/data/models/job.model.dart';
import 'package:find_job_app/features/job/domain/entities/job.entity.dart';
import 'package:find_job_app/features/job/domain/repositories/job.repository.dart';

class JobRepositoryImpl implements JobRepository {
  final JobRemoteDataSource jobRemoteDataSource;

  JobRepositoryImpl(this.jobRemoteDataSource);

  @override
  Future<Result<JobEntity?>> searchJobs(
      {String? query, String? location}) async {
    final data = await jobRemoteDataSource.findJobs(
      query: query,
      location: location,
    );
    return data.when(
          success: (data) => Result.success(data.toEntity()),
          loading: () => const Result.loading(),
          failed: (error) => Result.failed(error),
        ) ??
        const Result.initial();
  }
}
