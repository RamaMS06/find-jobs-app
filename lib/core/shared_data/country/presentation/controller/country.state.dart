
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.state.freezed.dart';

@freezed
class CountryState with _$CountryState{
  const factory CountryState.initial() = _CountryInitial;
  const factory CountryState.loading() = _CountryLoading;
  const factory CountryState.success(List<CountryEntity?> countries) = _CountrySuccess;
  const factory CountryState.failed(String message) = _CountryFailed;
}