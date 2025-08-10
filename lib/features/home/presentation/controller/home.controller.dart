
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/home/domain/usecase/search.job.dart';
import 'package:find_job_app/features/home/presentation/controller/job.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home.controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  late SearchJobUseCase _findJobUseCase;

  @override
  JobState build() {
    _findJobUseCase = sl<SearchJobUseCase>();
    return const JobState.initial();
  }

  Future<void> findJobs({String? query, String? location}) async {
    state = const JobState.loading();
    final result = await _findJobUseCase.call(query: query, location: location);
    result.when(success: (data) {
      state = JobState.success(data!);
    }, loading: () {
      state = const JobState.loading();
    }, failed: (error) {
      state = JobState.failed(error);
    });
  }
}
