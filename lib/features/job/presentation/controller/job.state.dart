import 'package:find_job_app/features/job/domain/entities/job.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.state.freezed.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial() = _JobInitial;
  const factory JobState.loading() = _JobLoading;
  const factory JobState.success(JobEntity data) = _JobSuccess;
  const factory JobState.failed(String message) = _JobFailed;
}
