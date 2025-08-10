import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:find_job_app/core/shared_data/auth/domain/entities/user.role.entitiy.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/current.user.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/get.role.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/save.role.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.in.dart';
import 'package:find_job_app/core/shared_data/auth/domain/usecases/sign.out.dart';
import 'package:find_job_app/core/shared_data/auth/presentation/controller/auth.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.controller.g.dart';

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
  late GetRoleUserUseCase _role;
  late SaveRoleUserUseCase _saveRole;

  @override
  AuthState build() {
    _sigIn = sl<SignInUseCase>();
    _signOut = sl<SignOutUseCase>();
    _user = sl<CurrentUserUseCase>();
    _role = sl<GetRoleUserUseCase>();
    _saveRole = sl<SaveRoleUserUseCase>();
    return const AuthState.initial();
  }

  Future<void> signIn() async {
    state = const AuthState.loading();
    final result = await _sigIn.call();
    result.when(success: (value) {
      state = AuthState.signUpSuccess(value);
      _saveRole.call(UserRoleEntity(role: UserRoleEnum.authenticated));
    }, loading: () {
      state = const AuthState.loading();
    }, failed: (message) {
      state = AuthState.authFailed(message);
    }, initial: () {
      state = const AuthState.initial();
    });
  }

  UserEntity? get currentUser => _user.currentUser;

  Future<void> signOut() async {
    state = const AuthState.loading();
    _signOut.call();
    state = const AuthState.signOutSuccess();
  }

  UserRoleEntity? get currentRole => _role.currentRole;

  Future<void> saveRole(UserRoleEntity role) async {
    _saveRole.call(role);
  }
}
