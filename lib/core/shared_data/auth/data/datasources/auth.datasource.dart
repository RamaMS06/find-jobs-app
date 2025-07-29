import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.role.model.dart';

abstract class AuthDataSource {
  Future<Result<UserModel>> signInWithGoogle();

  Future<UserModel?> get currentUser;

  Future<Result<UserModel?>> signOut();

  void saveRole(UserRoleModel role);

  UserRoleModel? get currentRole;
}
