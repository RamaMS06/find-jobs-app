import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/data/datasources/country.datasource.dart';
import 'package:find_job_app/core/shared_data/country/data/model/country.model.dart';
import 'package:find_job_app/core/shared_data/country/domain/entities/country.entity.dart';
import 'package:find_job_app/core/shared_data/country/domain/repositories/country.repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryDatasource _source;

  CountryRepositoryImpl(this._source);

  @override
  Future<Result<List<CountryEntity?>>> getCountries() async {
    final result = await _source.getCountries();
    return result.when(
        success: (datas) {
          return Result.success(
            datas.map((data) => data?.toEntity()).toList(),
          );
        },
        loading: () => const Result.loading(),
        failed: (error) => Result.failed(error));
  }

  @override
  Future<Result<List<CountryEntity?>>> searchCountries(String query) async {
    final result = await _source.searchCountries(query);
    return result.when(
        success: (datas) =>
            Result.success(datas.map((data) => data?.toEntity()).toList()),
        loading: () => const Result.loading(),
        failed: (error) => Result.failed(error));
  }
}
