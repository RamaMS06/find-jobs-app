import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? name,
    String? email,
    String? photoUrl,
  }) = _UserModel;
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() => UserEntity(
        id: id,
        name: name,
        email: email,
        photoUrl: photoUrl,
      );
}
