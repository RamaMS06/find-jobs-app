import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.model.freezed.dart';
part 'task.model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    String? title,
    String? description,
    String? hex,
    String? estimatedInMinutes,
    String? startTime,
    String? finishTime,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

extension TaskModelMapper on TaskModel {
  TaskEntity toEntity() => TaskEntity(
        title: title,
        description: description,
        hex: hex,
        estimatedTime: estimatedInMinutes,
        startTime: startTime,
        finishTime: finishTime,
      );
}
