// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      status: json['status'] as String?,
      requestId: json['requestId'] as String?,
      parameters: json['parameters'] == null
          ? null
          : JobParamters.fromJson(json['parameters'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => JobDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JobModelImplToJson(_$JobModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'requestId': instance.requestId,
      'parameters': instance.parameters,
      'data': instance.data,
    };
