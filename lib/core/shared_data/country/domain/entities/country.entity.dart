import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.entity.freezed.dart';

@freezed
class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    String? name,
    String? code,
    String? emoji,
    String? unicode,
    String? image,
    bool? isSelected,
  }) = _CountryEntity;
}
