import 'package:equatable/equatable.dart';
import 'package:find_job_app/core/core.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/current.user.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.in.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.out.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.controller.g.dart';
part 'auth.state.dart';

// final authControllerProvider =
//     StateNotifierProvider<AuthController, AuthState>((ref) {
//   final signIn = ref.read(signInUseCaseProvider);
//   final signOut = ref.read(signOutUseCaseProvider);
//   return AuthController(signIn, signOut);
// });

@riverpod
class AuthController extends _$AuthController {
  late SignInUseCase _sigIn;
  late SignOutUseCase _signOut;
  late CurrentUserUseCase _user;

  @override
  AuthState build() {
    _sigIn = sl<SignInUseCase>();
    _signOut = sl<SignOutUseCase>();
    _user = sl<CurrentUserUseCase>();
    return const AuthInitial();
  }
  
  Future<void> signIn() async {
    state = const AuthLoading();
    final result = await _sigIn.call();
    result.when(success: (value) {
      state = AuthSuccess(value);
    }, loading: () {
      state = const AuthLoading();
    }, failed: (message) {
      state = AuthFailed(message);
    }, initial: () {
      state = const AuthInitial();
    });
  }

  UserEntity? get currentUser => _user.currentUser;

  Future<void> signOut() async {
    final result = await _signOut.call();
    state = const AuthLoading();
    result.when(success: (value) {
      state = AuthSuccess(value);
    }, loading: () {
      state = const AuthLoading();
    }, failed: (message) {
      state = AuthFailed(message);
    });
  }
}
