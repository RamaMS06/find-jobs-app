import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import '../../../../services/result.dart';

abstract class AuthRepository {
  Future<Result<UserEntity?>> signInWithGoogle();
  UserEntity? get currentUser;
  Future<Result<UserEntity?>> signOut();
}