// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) => JobDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JobModelImplToJson(_$JobModelImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'jobs': instance.jobs,
    };
