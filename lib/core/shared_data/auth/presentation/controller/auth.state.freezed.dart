// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitialImpl implements _AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthState {
  const factory _AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoadingImpl implements _AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoading implements AuthState {
  const factory _AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthSignUpSuccessImplCopyWith<$Res> {
  factory _$$AuthSignUpSuccessImplCopyWith(_$AuthSignUpSuccessImpl value,
          $Res Function(_$AuthSignUpSuccessImpl) then) =
      __$$AuthSignUpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity data});
}

/// @nodoc
class __$$AuthSignUpSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSignUpSuccessImpl>
    implements _$$AuthSignUpSuccessImplCopyWith<$Res> {
  __$$AuthSignUpSuccessImplCopyWithImpl(_$AuthSignUpSuccessImpl _value,
      $Res Function(_$AuthSignUpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AuthSignUpSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthSignUpSuccessImpl implements _AuthSignUpSuccess {
  const _$AuthSignUpSuccessImpl(this.data);

  @override
  final UserEntity data;

  @override
  String toString() {
    return 'AuthState.signUpSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpSuccessImplCopyWith<_$AuthSignUpSuccessImpl> get copyWith =>
      __$$AuthSignUpSuccessImplCopyWithImpl<_$AuthSignUpSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) {
    return signUpSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) {
    return signUpSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSignUpSuccess implements AuthState {
  const factory _AuthSignUpSuccess(final UserEntity data) =
      _$AuthSignUpSuccessImpl;

  UserEntity get data;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSignUpSuccessImplCopyWith<_$AuthSignUpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignOutSuccessImplCopyWith<$Res> {
  factory _$$AuthSignOutSuccessImplCopyWith(_$AuthSignOutSuccessImpl value,
          $Res Function(_$AuthSignOutSuccessImpl) then) =
      __$$AuthSignOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSignOutSuccessImpl>
    implements _$$AuthSignOutSuccessImplCopyWith<$Res> {
  __$$AuthSignOutSuccessImplCopyWithImpl(_$AuthSignOutSuccessImpl _value,
      $Res Function(_$AuthSignOutSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthSignOutSuccessImpl implements _AuthSignOutSuccess {
  const _$AuthSignOutSuccessImpl();

  @override
  String toString() {
    return 'AuthState.signOutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) {
    return signOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) {
    return signOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) {
    return signOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) {
    return signOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSignOutSuccess implements AuthState {
  const factory _AuthSignOutSuccess() = _$AuthSignOutSuccessImpl;
}

/// @nodoc
abstract class _$$AuthFailedImplCopyWith<$Res> {
  factory _$$AuthFailedImplCopyWith(
          _$AuthFailedImpl value, $Res Function(_$AuthFailedImpl) then) =
      __$$AuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedImpl>
    implements _$$AuthFailedImplCopyWith<$Res> {
  __$$AuthFailedImplCopyWithImpl(
      _$AuthFailedImpl _value, $Res Function(_$AuthFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailedImpl implements _AuthFailed {
  const _$AuthFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.authFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      __$$AuthFailedImplCopyWithImpl<_$AuthFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity data) signUpSuccess,
    required TResult Function() signOutSuccess,
    required TResult Function(String message) authFailed,
  }) {
    return authFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserEntity data)? signUpSuccess,
    TResult? Function()? signOutSuccess,
    TResult? Function(String message)? authFailed,
  }) {
    return authFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity data)? signUpSuccess,
    TResult Function()? signOutSuccess,
    TResult Function(String message)? authFailed,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSignUpSuccess value) signUpSuccess,
    required TResult Function(_AuthSignOutSuccess value) signOutSuccess,
    required TResult Function(_AuthFailed value) authFailed,
  }) {
    return authFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult? Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult? Function(_AuthFailed value)? authFailed,
  }) {
    return authFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSignUpSuccess value)? signUpSuccess,
    TResult Function(_AuthSignOutSuccess value)? signOutSuccess,
    TResult Function(_AuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailed implements AuthState {
  const factory _AuthFailed(final String message) = _$AuthFailedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
