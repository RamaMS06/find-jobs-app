// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobDataModelImpl _$$JobDataModelImplFromJson(Map<String, dynamic> json) =>
    _$JobDataModelImpl(
      jobId: json['jobId'] as String?,
      jobTitle: json['jobTitle'] as String?,
      employerName: json['employerName'] as String?,
      employerLogo: json['employerLogo'] as String?,
      employerWebsite: json['employerWebsite'] as String?,
      jobPublisher: json['jobPublisher'] as String?,
      jobEmploymentType: json['jobEmploymentType'] as String?,
      jobEmploymentTypes: (json['jobEmploymentTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobApplyLink: json['jobApplyLink'] as String?,
      jobApplyIsDirect: json['jobApplyIsDirect'] as bool?,
      applyOptions: (json['applyOptions'] as List<dynamic>?)
          ?.map((e) => ApplyOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobDescription: json['jobDescription'] as String?,
      jobIsRemote: json['jobIsRemote'] as bool?,
      jobPostedAt: json['jobPostedAt'] as String?,
      jobPostedAtTimestamp: (json['jobPostedAtTimestamp'] as num?)?.toInt(),
      jobPostedAtDatetimeUtc: json['jobPostedAtDatetimeUtc'] == null
          ? null
          : DateTime.parse(json['jobPostedAtDatetimeUtc'] as String),
      jobLocation: json['jobLocation'] as String?,
      jobCity: json['jobCity'] as String?,
      jobState: json['jobState'] as String?,
      jobCountry: json['jobCountry'] as String?,
      jobLatitude: (json['jobLatitude'] as num?)?.toDouble(),
      jobLongitude: (json['jobLongitude'] as num?)?.toDouble(),
      jobBenefits: (json['jobBenefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobGoogleLink: json['jobGoogleLink'] as String?,
      jobSalary: (json['jobSalary'] as num?)?.toDouble(),
      jobMinSalary: (json['jobMinSalary'] as num?)?.toInt(),
      jobMaxSalary: (json['jobMaxSalary'] as num?)?.toInt(),
      jobSalaryPeriod: json['jobSalaryPeriod'] as String?,
      jobHighlights: json['jobHighlights'] == null
          ? null
          : JobHighlights.fromJson(
              json['jobHighlights'] as Map<String, dynamic>),
      jobOnetSoc: json['jobOnetSoc'] as String?,
      jobOnetJobZone: json['jobOnetJobZone'] as String?,
    );

Map<String, dynamic> _$$JobDataModelImplToJson(_$JobDataModelImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'employerName': instance.employerName,
      'employerLogo': instance.employerLogo,
      'employerWebsite': instance.employerWebsite,
      'jobPublisher': instance.jobPublisher,
      'jobEmploymentType': instance.jobEmploymentType,
      'jobEmploymentTypes': instance.jobEmploymentTypes,
      'jobApplyLink': instance.jobApplyLink,
      'jobApplyIsDirect': instance.jobApplyIsDirect,
      'applyOptions': instance.applyOptions,
      'jobDescription': instance.jobDescription,
      'jobIsRemote': instance.jobIsRemote,
      'jobPostedAt': instance.jobPostedAt,
      'jobPostedAtTimestamp': instance.jobPostedAtTimestamp,
      'jobPostedAtDatetimeUtc':
          instance.jobPostedAtDatetimeUtc?.toIso8601String(),
      'jobLocation': instance.jobLocation,
      'jobCity': instance.jobCity,
      'jobState': instance.jobState,
      'jobCountry': instance.jobCountry,
      'jobLatitude': instance.jobLatitude,
      'jobLongitude': instance.jobLongitude,
      'jobBenefits': instance.jobBenefits,
      'jobGoogleLink': instance.jobGoogleLink,
      'jobSalary': instance.jobSalary,
      'jobMinSalary': instance.jobMinSalary,
      'jobMaxSalary': instance.jobMaxSalary,
      'jobSalaryPeriod': instance.jobSalaryPeriod,
      'jobHighlights': instance.jobHighlights,
      'jobOnetSoc': instance.jobOnetSoc,
      'jobOnetJobZone': instance.jobOnetJobZone,
    };
