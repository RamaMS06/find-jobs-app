import 'package:find_job_app/features/home/data/models/apply.option.model.dart';
import 'package:find_job_app/features/home/data/models/job.highlight.dart';
import 'package:find_job_app/features/home/domain/entities/job.data.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.data.model.freezed.dart';
part 'job.data.model.g.dart';

@freezed
class JobDataModel with _$JobDataModel {
  const factory JobDataModel({
    String? jobId,
    String? jobTitle,
    String? employerName,
    String? employerLogo,
    String? employerWebsite,
    String? jobPublisher,
    String? jobEmploymentType,
    List<String>? jobEmploymentTypes,
    String? jobApplyLink,
    bool? jobApplyIsDirect,
    List<ApplyOption>? applyOptions,
    String? jobDescription,
    bool? jobIsRemote,
    String? jobPostedAt,
    int? jobPostedAtTimestamp,
    DateTime? jobPostedAtDatetimeUtc,
    String? jobLocation,
    String? jobCity,
    String? jobState,
    String? jobCountry,
    double? jobLatitude,
    double? jobLongitude,
    List<String>? jobBenefits,
    String? jobGoogleLink,
    double? jobSalary,
    int? jobMinSalary,
    int? jobMaxSalary,
    String? jobSalaryPeriod,
    JobHighlights? jobHighlights,
    String? jobOnetSoc,
    String? jobOnetJobZone,
  }) = _JobDataModel;

  factory JobDataModel.fromJson(Map<String, dynamic> json) =>
      _$JobDataModelFromJson(json);
}

extension JobDataModelMapper on JobDataModel {
  JobDataEntity toEntity() => JobDataEntity(
        id: jobId,
        title: jobTitle,
        name: employerName,
        logo: employerLogo,
        website: employerWebsite,
        publisher: jobPublisher,
        type: jobEmploymentType,
        types: jobEmploymentTypes,
        applyLink: jobApplyLink,
        isApplyLinkDirect: jobApplyIsDirect,
        applyOptions: applyOptions?.map((e) => e.toEntity()).toList(),
        description: jobDescription,
        isRemote: jobIsRemote,
        postedAt: jobPostedAt,
        postedAtTimeStamp: jobPostedAtTimestamp,
        postedAtDateTime: jobPostedAtDatetimeUtc,
        location: jobLocation,
        city: jobCity,
        state: jobState,
        country: jobCountry,
        latitude: jobLatitude,
        longitude: jobLongitude,
        benefits: jobBenefits,
        googleLink: jobGoogleLink,
        minSalary: jobMinSalary?.toDouble(),
        maxSalary: jobMaxSalary?.toDouble(),
        salaryPeriod: jobSalaryPeriod,
        highlights: jobHighlights?.toEntity(),
        onetSoc: jobOnetSoc,
        zone: jobOnetJobZone,
      );
}
