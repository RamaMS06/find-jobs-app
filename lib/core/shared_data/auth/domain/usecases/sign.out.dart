import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

class SignOutUseCase {
  final AuthRepository repository;

  SignOutUseCase(this.repository);

  void call() {
    repository.signOut();
  }
}