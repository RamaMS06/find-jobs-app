import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<Result<UserEntity?>> call() async {
    return await repository.signInWithGoogle();
  }
}
