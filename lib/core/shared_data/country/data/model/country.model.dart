
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.model.freezed.dart';
part 'country.model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    String? name,
    String? code,
    String? emoji,
    String? unicode,
    String? image,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

extension CountryModelExtension on CountryModel {
  CountryEntity toEntity() => CountryEntity(
        name: name,
        code: code,
        emoji: emoji,
        unicode: unicode,
        image: image,
      );
}