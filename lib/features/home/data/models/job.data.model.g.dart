// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobDataModelImpl _$$JobDataModelImplFromJson(Map<String, dynamic> json) =>
    _$JobDataModelImpl(
      jobId: (json['id'] as num?)?.toInt(),
      jobTitle: json['title'] as String?,
      location: json['location'] as String?,
      snippet: json['snippet'] as String?,
      salary: json['salary'] as String?,
      source: json['source'] as String?,
      type: json['type'] as String?,
      link: json['link'] as String?,
      company: json['company'] as String?,
      updated: json['updated'] as String?,
    );

Map<String, dynamic> _$$JobDataModelImplToJson(_$JobDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.jobId,
      'title': instance.jobTitle,
      'location': instance.location,
      'snippet': instance.snippet,
      'salary': instance.salary,
      'source': instance.source,
      'type': instance.type,
      'link': instance.link,
      'company': instance.company,
      'updated': instance.updated,
    };
