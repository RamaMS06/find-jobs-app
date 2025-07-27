import 'package:find_job_app/features/login/domain/entities/user.entity.dart';
import '../../../../core/network/result.dart';

abstract class AuthRepository {
  Future<Result<UserEntity?>> signInWithGoogle();
  UserEntity? get currentUser;
  Future<Result<UserEntity?>> signOut();
}