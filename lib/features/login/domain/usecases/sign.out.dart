import 'package:find_job_app/core/network/result.dart';
import 'package:find_job_app/features/login/domain/entities/user.entity.dart';
import 'package:find_job_app/features/login/domain/repositories/auth.repository.dart';

class SignOutUseCase {
  final AuthRepository repository;

  SignOutUseCase(this.repository);

  Future<Result<UserEntity?>> execute() async {
    return await repository.signOut();
  }
}