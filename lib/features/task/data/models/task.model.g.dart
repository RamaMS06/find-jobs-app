// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      hex: json['hex'] as String?,
      estimatedInMinutes: json['estimatedInMinutes'] as String?,
      startTime: json['startTime'] as String?,
      finishTime: json['finishTime'] as String?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'hex': instance.hex,
      'estimatedInMinutes': instance.estimatedInMinutes,
      'startTime': instance.startTime,
      'finishTime': instance.finishTime,
    };
