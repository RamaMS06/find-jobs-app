import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/data/model/country.model.dart';

abstract class CountryDatasource {
  Future<Result<List<CountryModel?>>> getCountries();
  Future<Result<List<CountryModel?>>> searchCountries(String query);
}