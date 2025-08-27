// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      estimatedInMinutes: json['estimatedInMinutes'] as String?,
      startTime: json['startTime'] as String?,
      finishTime: json['finishTime'] as String?,
      isDone: json['isDone'] as bool?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'estimatedInMinutes': instance.estimatedInMinutes,
      'startTime': instance.startTime,
      'finishTime': instance.finishTime,
      'isDone': instance.isDone,
    };
