import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

class GetRoleUserUseCase {
  final AuthRepository repository;

  GetRoleUserUseCase(this.repository);

  UserRoleEntity? get currentRole => repository.currentRole;
}
