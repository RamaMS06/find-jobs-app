import 'package:find_job_app/features/login/domain/entities/user.entity.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repositories/auth.repository.dart';
import '../../domain/usecases/usecase.dart';
import '../repositories/auth.repository.impl.dart';

final googleSignInProvider = Provider((ref) => GoogleSignIn());

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final googleSignIn = ref.watch(googleSignInProvider);
  return AuthRepositoryImpl(googleSignIn);
});

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignInUseCase(repository);
});

final currentUserGoogleProvider = Provider<UserEntity?>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.currentUser;
});

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SignOutUseCase(repository);
});
