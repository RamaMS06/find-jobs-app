import 'package:find_job_app/core/shared_data/country/data/datasources/country.datasource.impl.dart';
import 'package:find_job_app/core/shared_data/country/data/repositories/country.repository.impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryDatasourceProvider = Provider((ref) {
  return CountryDatasourceImpl();
});

final countryRepositoryProvider = Provider((ref) {
  return CountryRepositoryImpl(ref.read(countryDatasourceProvider));
});


