import 'package:find_job_app/features/home/domain/entities/job.param.entity.dart';
import 'package:find_job_app/features/home/domain/entities/job.data.entity.dart';

class JobEntity {
  
  final String? status;

  final String? id;

  final JobParamEntity? parameters;

  final List<JobDataEntity>? data;

  JobEntity({
    this.status,
    this.id,
    this.parameters,
    this.data,
  });
}
