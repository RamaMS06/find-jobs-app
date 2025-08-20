import 'package:find_job_app/features/job/domain/entities/job.data.entity.dart';

class JobEntity {
  
  final int? totalCount;

  final List<JobDataEntity>? jobs;

  JobEntity({
    this.totalCount,
    this.jobs,
  });
}
