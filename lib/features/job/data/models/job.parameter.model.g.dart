// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.parameter.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobParamtersImpl _$$JobParamtersImplFromJson(Map<String, dynamic> json) =>
    _$JobParamtersImpl(
      query: json['query'] as String?,
      page: (json['page'] as num?)?.toInt(),
      numPages: (json['numPages'] as num?)?.toInt(),
      country: json['country'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$JobParamtersImplToJson(_$JobParamtersImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'page': instance.page,
      'numPages': instance.numPages,
      'country': instance.country,
      'language': instance.language,
    };
