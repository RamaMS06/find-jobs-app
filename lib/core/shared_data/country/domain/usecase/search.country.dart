
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:find_job_app/core/shared_data/country/domain/repositories/country.repository.dart';

class SearchCountryUseCase{
  final CountryRepository _countryRepository;

  SearchCountryUseCase(this._countryRepository);

  Future<Result<List<CountryEntity?>>> call(String query) async {
    return await _countryRepository.searchCountries(query);
  }
}