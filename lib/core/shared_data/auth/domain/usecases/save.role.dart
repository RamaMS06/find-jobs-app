import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

class SaveRoleUserUseCase {
  final AuthRepository repository;

  SaveRoleUserUseCase(this.repository);

  void call(UserRoleEntity role) {
    repository.saveRole(role);
  }
}
