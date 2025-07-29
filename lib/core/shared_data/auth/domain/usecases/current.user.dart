import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

class CurrentUserUseCase {
  final AuthRepository repository;

  CurrentUserUseCase(this.repository);

  Future<UserEntity?> get currentUser async => await repository.currentUser;
}
