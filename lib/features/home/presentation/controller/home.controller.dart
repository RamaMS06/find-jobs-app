
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/home/presentation/providers/job.providers.dart';
import 'package:find_job_app/features/home/domain/entities/job.entity.dart';
import 'package:find_job_app/features/home/domain/usecase/search.job.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeControllerProvider =
    StateNotifierProvider<HomeController, Result<JobEntity?>>((ref) {
  final usecase = ref.watch(jobUseCaseProvider);
  return HomeController(usecase);
});

class HomeController extends StateNotifier<Result<JobEntity?>> {
  final SearchJobUseCase findJobUseCase;

  HomeController(this.findJobUseCase) : super(const Initial());

  Future<void> findJobs({String? query}) async {
    state = const Result.loading();
    final result = await findJobUseCase.execute(query: query);
    result.when(success: (data) {
      state = Result.success(data);
    }, loading: () {
      state = const Result.loading();
    }, failed: (error) {
      state = Result.failure(error);
    });
  }
}
