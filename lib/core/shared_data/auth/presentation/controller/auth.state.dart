import 'package:find_job_app/core/shared_data/auth/domain/entities/user.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.loading() = _AuthLoading;
  const factory AuthState.signUpSuccess(UserEntity data) = _AuthSignUpSuccess;
  const factory AuthState.signOutSuccess() = _AuthSignOutSuccess;
  const factory AuthState.authFailed(String message) = _AuthFailed;
}
