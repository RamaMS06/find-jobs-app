import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCountryProvider = StateProvider<CountryEntity?>(
  (ref) => null,
);