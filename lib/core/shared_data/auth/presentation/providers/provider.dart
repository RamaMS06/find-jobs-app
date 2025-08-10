import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.dart';
import 'package:find_job_app/core/shared_data/auth/data/repositories/auth.repository.impl.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/auth.repository.dart';
import '../../domain/usecases/usecase.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(sl<AuthRemoteDataSource>());
});

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignInUseCase(repository);
});

final currentUserProvider = FutureProvider<UserEntity?>((ref) async {
  final repository = ref.watch(authRepositoryProvider);
  return repository.currentUser;
});

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignOutUseCase(repository);
});
