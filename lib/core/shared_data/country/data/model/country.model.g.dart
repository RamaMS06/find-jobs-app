// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      emoji: json['emoji'] as String?,
      unicode: json['unicode'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'emoji': instance.emoji,
      'unicode': instance.unicode,
      'image': instance.image,
    };
