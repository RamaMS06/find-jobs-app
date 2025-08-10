import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';

abstract class CountryRepository {
  Future<Result<List<CountryEntity?>>> getCountries();
  Future<Result<List<CountryEntity?>>> searchCountries(String query);
}