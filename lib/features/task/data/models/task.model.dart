import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.model.freezed.dart';
part 'task.model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    String? id,
    String? title,
    String? description,
    String? estimatedInMinutes,
    String? startTime,
    String? finishTime,
    bool? isDone,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

extension TaskModelMapper on TaskModel {
  TaskEntity toEntity() => TaskEntity(
        id: id,
        title: title,
        description: description,
        estimatedTime: estimatedInMinutes,
        startTime: startTime,
        finishTime: finishTime,
        isDone: isDone,
      );
}
