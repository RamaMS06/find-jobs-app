import 'package:find_job_app/features/login/domain/entities/user.entity.dart';
import 'package:find_job_app/features/login/domain/repositories/auth.repository.dart';

class CurrentUserUseCase {
  final AuthRepository repository;

  CurrentUserUseCase(this.repository);

  UserEntity? get currentUser => repository.currentUser;
}
