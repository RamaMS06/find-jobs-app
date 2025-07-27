import 'package:find_job_app/core/network/result.dart';
import 'package:find_job_app/features/login/domain/entities/user.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/providers/google.signin.provider.dart';
import '../../domain/usecases/usecase.dart';

final signInControllerProvider =
    StateNotifierProvider<AuthController, Result<UserEntity?>>((ref) {
  final signInWithGoogle = ref.read(signInUseCaseProvider);
  return AuthController(signInWithGoogle);
});

final signOutControllerProvider =
    StateNotifierProvider<AuthController, Result<UserEntity?>>((ref) {
  final signOut = ref.read(signOutUseCaseProvider);
  return AuthController(signOut);
});

class AuthController<T> extends StateNotifier<Result<UserEntity?>> {
  final T ref;

  AuthController(this.ref) : super(const Result.idle());

  Future<void> signIn() async {
    final result = await (ref as SignInUseCase).execute();
    result.when(success: (value) {
      state = Result.success(value);
    }, loading: () {
      state = const Result.loading();
    }, failed: (message) {
      state = Result.failure(message);
    }, idle: () {
      state = const Result.idle();
    });
  }

  Future<void> signOut() async {
    final result = await (ref as SignOutUseCase).execute();
    result.when(success: (value) {
      state = Result.success(value);
    }, loading: () {
      state = const Result.loading();
    }, failed: (message) {
      state = Result.failure(message);
    });
  }
}
