// ignore_for_file: invalid_annotation_target
import 'package:find_job_app/features/home/domain/entities/job.data.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'job.data.model.freezed.dart';
part 'job.data.model.g.dart';

@freezed
class JobDataModel with _$JobDataModel {
  const factory JobDataModel({
    @JsonKey(name: 'id') int? jobId,
    @JsonKey(name: 'title') String? jobTitle,
    String? location,
    String? snippet,
    String? salary,
    String? source,
    String? type,
    String? link,
    String? company,
    String? updated,
  }) = _JobDataModel;

  factory JobDataModel.fromJson(Map<String, dynamic> json) =>
      _$JobDataModelFromJson(json);
}

extension JobDataModelMapper on JobDataModel {
  JobDataEntity toEntity() => JobDataEntity(
        id: jobId,
        title: jobTitle,
        location: location,
        snippet: snippet,
        salary: salary,
        source: source,
        type: type,
        link: link,
        company: company,
        updated: updated,
      );
}
