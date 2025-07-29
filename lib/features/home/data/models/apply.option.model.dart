import 'package:find_job_app/features/home/domain/entities/apply.option.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply.option.model.freezed.dart';
part 'apply.option.model.g.dart';

@freezed
class ApplyOption with _$ApplyOption {
  const factory ApplyOption({
    String? publisher,
    String? applyLink,
    bool? isDirect,
  }) = _ApplyOption;

  factory ApplyOption.fromJson(Map<String, dynamic> json) =>
      _$ApplyOptionFromJson(json);
}

extension ApplyOptionMapper on ApplyOption {
  ApplyOptionEntity toEntity() => ApplyOptionEntity(
        publisher: publisher,
        link: applyLink,
        isDirect: isDirect,
      );
}
