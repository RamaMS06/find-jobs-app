import 'package:freezed_annotation/freezed_annotation.dart';

part 'date.state.freezed.dart';

@freezed
class DateState with _$DateState {
  const factory DateState.initial() = _DateInitial;
  const factory DateState.loading() = _DateLoading;
  const factory DateState.success(List<DateTime> data) = _DateSuccess;
  const factory DateState.failed(String message) = _DateFailed;
  const factory DateState.empty() = _DateEmpty;
}