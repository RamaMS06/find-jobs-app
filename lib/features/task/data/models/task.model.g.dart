// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: (json['time'] as num?)?.toDouble(),
      colorHex: (json['colorHex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'colorHex': instance.colorHex,
    };
