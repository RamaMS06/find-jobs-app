import 'package:find_job_app/features/home/domain/entities/highlight.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.highlight.freezed.dart';
part 'job.highlight.g.dart';

@freezed
class JobHighlights with _$JobHighlights {
  const factory JobHighlights({
    List<String>? qualifications,
    List<String>? benefits,
    List<String>? responsibilities,
  }) = _JobHighlights;

  factory JobHighlights.fromJson(Map<String, dynamic> json) =>
      _$JobHighlightsFromJson(json);
}

extension JobHighlightsMapper on JobHighlights {
  JobHighlightsEntity toEntity() => JobHighlightsEntity(
        qualifications: qualifications,
        benefits: benefits,
        responsibilities: responsibilities,
      );
}
