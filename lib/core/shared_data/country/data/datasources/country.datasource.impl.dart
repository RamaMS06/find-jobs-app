import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/country/data/datasources/country.datasource.dart';
import 'package:find_job_app/core/shared_data/country/data/model/country.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountryDatasourceImpl extends CountryDatasource {
  final _dio = sl<Dio>();
  final _prefs = sl<SharedPreferences>();

  @override
  Future<Result<List<CountryModel?>>> getCountries() async {
    try {
      if (_prefs.getString('countries') != null) {
        final data =
            jsonDecode(_prefs.getString('countries') ?? '[]') as List<dynamic>;
        final countries = data
            .map<CountryModel?>(
                (e) => CountryModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return Result.success(countries);
      } else {
        final response = await _dio.get(
            'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json');
        final responseData = response.data;
        await _prefs.setString('countries', jsonEncode(responseData));
        final data =
            jsonDecode(_prefs.getString('countries') ?? '[]') as List<dynamic>;
        final countries = data
            .map<CountryModel?>(
                (e) => CountryModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return Result.success(countries);
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<List<CountryModel?>>> searchCountries(String query) async {
    try {
      final data = await getCountries();
      return data.when(
          success: (data) {
            return Result.success(data
                .where((e) =>
                    e!.name!.toLowerCase().contains(query.toLowerCase()) ||
                    e.code!.toLowerCase().contains(query.toLowerCase()))
                .toList());
          },
          loading: () => const Result.loading(),
          failed: (error) => Result.failed(error));
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
