import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/home/data/datasources/job.remote.datasource.dart';
import 'package:find_job_app/features/home/data/models/job.model.dart';
import 'package:find_job_app/features/home/domain/entities/job.entity.dart';
import 'package:find_job_app/features/home/domain/repositories/job.repository.dart';

class JobRepositoryImpl implements JobRepository {
  final JobRemoteDataSource jobRemoteDataSource;

  JobRepositoryImpl(this.jobRemoteDataSource);

  @override
  Future<Result<JobEntity?>> searchJobs({String? query}) async {
    final data = await jobRemoteDataSource.findJobs(query: query);
    return data.when(
          success: (data) => Result.success(data.toEntity()),
          loading: () => const Result.loading(),
          failed: (error) => Result.failure(error),
        ) ??
        const Result.initial();
  }
}
