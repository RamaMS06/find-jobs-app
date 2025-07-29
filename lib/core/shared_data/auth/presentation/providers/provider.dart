
import 'package:find_job_app/core/shared_data/auth/data/datasources/auth.datasource.impl.dart';
import 'package:find_job_app/core/shared_data/auth/data/repositories/auth.repository.impl.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/auth.repository.dart';
import '../../domain/usecases/usecase.dart';

final googleSignInProvider = Provider((ref) => GoogleSignIn());

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final signIn = ref.watch(googleSignInProvider);
  return AuthRepositoryImpl(AuthDataSourceImpl(signIn));
});

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignInUseCase(repository);
});

final currentUserProvider = FutureProvider<UserEntity?>((ref) async {
  final repository = ref.watch(authRepositoryProvider);
  return await repository.currentUser;
});

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignOutUseCase(repository);
});
