import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/task/domain/usecase/get.dates.dart';
import 'package:find_job_app/features/task/presentation/controller/date.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date.controller.g.dart';

@riverpod
class DateController extends _$DateController {
  late GetDatesUseCase _getDatesUseCase;

  @override
  DateState build() {
    _getDatesUseCase = sl<GetDatesUseCase>();
    return const DateState.initial();
  }
  
  Stream<List<DateTime>> getDates(String userId) {
    return _getDatesUseCase.call(userId);
  }
}
