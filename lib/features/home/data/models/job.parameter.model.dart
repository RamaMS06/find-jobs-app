import 'package:find_job_app/features/home/domain/entities/job.param.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.parameter.model.freezed.dart';
part 'job.parameter.model.g.dart';

@freezed
class JobParamters with _$JobParamters {
  const factory JobParamters({
    String? query,
    int? page,
    int? numPages,
    String? country,
    String? language,
  }) = _JobParamters;

  factory JobParamters.fromJson(Map<String, dynamic> json) =>
      _$JobParamtersFromJson(json);
}

extension JobParamtersMapper on JobParamters {
  JobParamEntity toEntity() => JobParamEntity(
        query: query,
        page: page,
        numPages: numPages,
        country: country,
        language: language,
      );
}
