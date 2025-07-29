import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/models/user.model.dart';
import 'package:find_job_app/core/shared_data/auth/domain/repositories/auth.repository.dart';

import '../../domain/entities/user.entity.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<Result<UserEntity?>> signInWithGoogle() async {
    final account = await _authDataSource.signInWithGoogle();
    return account.when(
          success: (data) => Result.success(data.toEntity()),
          loading: () => const Result.loading(),
          failed: (error) => Result.failure(error),
        ) ??
        const Result.initial();
  }

  @override
  UserEntity? get currentUser {
    final user = _authDataSource.currentUser;
    return user?.toEntity();
  }

  @override
  Future<Result<UserEntity?>> signOut() async {
    final result = await _authDataSource.signOut();
    return result.when(
          success: (data) => Result.success(data?.toEntity()),
          loading: () => const Result.loading(),
          failed: (error) => Result.failure(error),
        ) ??
        const Result.initial();
  }
}
