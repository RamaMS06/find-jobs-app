part of 'auth.controller.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthSuccess<T> extends AuthState {
  final T? data;
  const AuthSuccess(this.data);
}

class AuthFailed extends AuthState {
  final String message;
  const AuthFailed(this.message);

  @override
  List<Object?> get props => [message];
}

// class AuthState extends Equatable {
//   final Result _result;

//   const AuthState({required Result result}) : _result = result;
  
//   AuthState copyWith({Result? result}){
//     return AuthState(result: result ?? _result);
//   }

//   @override
//   List<Object?> get props => [_result];
// }