import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/shared_data/country/domain/usecase/get.country.dart';
import 'package:find_job_app/core/shared_data/country/domain/usecase/search.country.dart';
import 'package:find_job_app/core/shared_data/country/presentation/controller/country.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country.controller.g.dart';

@riverpod
class CountryController extends _$CountryController {
  late GetCountryUseCase _getCountryUseCase;
  late SearchCountryUseCase _searchCountryUseCase;

  @override
  CountryState build() {
    _getCountryUseCase = sl<GetCountryUseCase>();
    _searchCountryUseCase = sl<SearchCountryUseCase>();
    return const CountryState.initial();
  }

  Future<void> getCountries() async {
    state = const CountryState.loading();
    final result = await _getCountryUseCase.call();
    result.when(success: (data) {
      state = CountryState.success(data);
    }, failed: (error) {
      state = CountryState.failed(error);
    }, loading: () {
      state = const CountryState.loading();
    });
  }

  Future<void> searchCountries(String query) async {
    state = const CountryState.loading();
    final result = await _searchCountryUseCase.call(query);
    result.when(success: (data) {
      state = CountryState.success(data);
    }, failed: (error) {
      state = CountryState.failed(error);
    }, loading: () {
      state = const CountryState.loading();
    });
  }
}
