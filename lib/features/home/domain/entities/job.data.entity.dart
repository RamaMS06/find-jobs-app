import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.data.entity.freezed.dart';

@freezed
class JobDataEntity with _$JobDataEntity {
  const factory JobDataEntity({
    String? title,
    String? location,
    String? snippet,
    String? salary,
    String? source,
    String? type,
    String? link,
    String? company,
    String? updated,
    int? id,
  }) = _JobDataEntity;
}
