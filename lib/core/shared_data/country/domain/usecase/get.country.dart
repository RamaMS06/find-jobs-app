import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:find_job_app/core/shared_data/country/domain/repositories/country.repository.dart';

class GetCountryUseCase {
  final CountryRepository _countryRepository;

  GetCountryUseCase(this._countryRepository);

  Future<Result<List<CountryEntity?>>> call() async {
    return await _countryRepository.getCountries();
  }
}