import 'package:find_job_app/features/home/data/models/job.data.model.dart';
import 'package:find_job_app/features/home/domain/entities/job.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.model.freezed.dart';
part 'job.model.g.dart';

@freezed
class JobModel with _$JobModel {
  const factory JobModel({
    int? totalCount,
    List<JobDataModel>? jobs,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}

extension JobModelMapper on JobModel {
  JobEntity toEntity() => JobEntity(
        totalCount: totalCount,
        jobs: jobs?.map((e) => e.toEntity()).toList(),
      );
}
