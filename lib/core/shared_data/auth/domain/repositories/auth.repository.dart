import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import '../../../../services/result.dart';

abstract class AuthRepository {
  Future<Result<UserEntity?>> signInWithGoogle();
  Future<UserEntity?> get currentUser;
  Future<Result<UserEntity?>> signOut();
  void saveRole(UserRoleEntity role);
  UserRoleEntity? get currentRole;
}