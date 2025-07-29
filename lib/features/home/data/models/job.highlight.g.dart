// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobHighlightsImpl _$$JobHighlightsImplFromJson(Map<String, dynamic> json) =>
    _$JobHighlightsImpl(
      qualifications: (json['qualifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      benefits: (json['benefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      responsibilities: (json['responsibilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$JobHighlightsImplToJson(_$JobHighlightsImpl instance) =>
    <String, dynamic>{
      'qualifications': instance.qualifications,
      'benefits': instance.benefits,
      'responsibilities': instance.responsibilities,
    };
