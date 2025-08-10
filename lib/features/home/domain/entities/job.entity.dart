import 'package:find_job_app/features/home/domain/entities/job.data.entity.dart';

class JobEntity {
  
  final int? totalCount;

  final List<JobDataEntity>? jobs;

  JobEntity({
    this.totalCount,
    this.jobs,
  });
}
