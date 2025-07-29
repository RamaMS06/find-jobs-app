import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.role.model.freezed.dart';

@freezed
class UserRoleModel with _$UserRoleModel {
  const factory UserRoleModel({
    required UserRoleEnum role,
  }) = _UserRoleModel;
}

extension UserRoleModelMapper on UserRoleModel {
  UserRoleEntity toEntity() => UserRoleEntity(role: role);
}