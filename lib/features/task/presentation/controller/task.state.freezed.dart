// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<T, $Res> {
  factory $TaskStateCopyWith(
          TaskState<T> value, $Res Function(TaskState<T>) then) =
      _$TaskStateCopyWithImpl<T, $Res, TaskState<T>>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<T, $Res, $Val extends TaskState<T>>
    implements $TaskStateCopyWith<T, $Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskInitialImplCopyWith<T, $Res> {
  factory _$$TaskInitialImplCopyWith(_$TaskInitialImpl<T> value,
          $Res Function(_$TaskInitialImpl<T>) then) =
      __$$TaskInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TaskInitialImplCopyWithImpl<T, $Res>
    extends _$TaskStateCopyWithImpl<T, $Res, _$TaskInitialImpl<T>>
    implements _$$TaskInitialImplCopyWith<T, $Res> {
  __$$TaskInitialImplCopyWithImpl(
      _$TaskInitialImpl<T> _value, $Res Function(_$TaskInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskInitialImpl<T> implements _TaskInitial<T> {
  const _$TaskInitialImpl();

  @override
  String toString() {
    return 'TaskState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
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
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TaskInitial<T> implements TaskState<T> {
  const factory _TaskInitial() = _$TaskInitialImpl<T>;
}

/// @nodoc
abstract class _$$TaskLoadingImplCopyWith<T, $Res> {
  factory _$$TaskLoadingImplCopyWith(_$TaskLoadingImpl<T> value,
          $Res Function(_$TaskLoadingImpl<T>) then) =
      __$$TaskLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TaskLoadingImplCopyWithImpl<T, $Res>
    extends _$TaskStateCopyWithImpl<T, $Res, _$TaskLoadingImpl<T>>
    implements _$$TaskLoadingImplCopyWith<T, $Res> {
  __$$TaskLoadingImplCopyWithImpl(
      _$TaskLoadingImpl<T> _value, $Res Function(_$TaskLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskLoadingImpl<T> implements _TaskLoading<T> {
  const _$TaskLoadingImpl();

  @override
  String toString() {
    return 'TaskState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
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
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TaskLoading<T> implements TaskState<T> {
  const factory _TaskLoading() = _$TaskLoadingImpl<T>;
}

/// @nodoc
abstract class _$$TaskSuccessImplCopyWith<T, $Res> {
  factory _$$TaskSuccessImplCopyWith(_$TaskSuccessImpl<T> value,
          $Res Function(_$TaskSuccessImpl<T>) then) =
      __$$TaskSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$TaskSuccessImplCopyWithImpl<T, $Res>
    extends _$TaskStateCopyWithImpl<T, $Res, _$TaskSuccessImpl<T>>
    implements _$$TaskSuccessImplCopyWith<T, $Res> {
  __$$TaskSuccessImplCopyWithImpl(
      _$TaskSuccessImpl<T> _value, $Res Function(_$TaskSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TaskSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$TaskSuccessImpl<T> implements _TaskSuccess<T> {
  const _$TaskSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TaskState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSuccessImplCopyWith<T, _$TaskSuccessImpl<T>> get copyWith =>
      __$$TaskSuccessImplCopyWithImpl<T, _$TaskSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _TaskSuccess<T> implements TaskState<T> {
  const factory _TaskSuccess(final T data) = _$TaskSuccessImpl<T>;

  T get data;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSuccessImplCopyWith<T, _$TaskSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFailedImplCopyWith<T, $Res> {
  factory _$$TaskFailedImplCopyWith(
          _$TaskFailedImpl<T> value, $Res Function(_$TaskFailedImpl<T>) then) =
      __$$TaskFailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TaskFailedImplCopyWithImpl<T, $Res>
    extends _$TaskStateCopyWithImpl<T, $Res, _$TaskFailedImpl<T>>
    implements _$$TaskFailedImplCopyWith<T, $Res> {
  __$$TaskFailedImplCopyWithImpl(
      _$TaskFailedImpl<T> _value, $Res Function(_$TaskFailedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TaskFailedImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskFailedImpl<T> implements _TaskFailed<T> {
  const _$TaskFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TaskState<$T>.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFailedImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFailedImplCopyWith<T, _$TaskFailedImpl<T>> get copyWith =>
      __$$TaskFailedImplCopyWithImpl<T, _$TaskFailedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _TaskFailed<T> implements TaskState<T> {
  const factory _TaskFailed(final String message) = _$TaskFailedImpl<T>;

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskFailedImplCopyWith<T, _$TaskFailedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEmptyImplCopyWith<T, $Res> {
  factory _$$TaskEmptyImplCopyWith(
          _$TaskEmptyImpl<T> value, $Res Function(_$TaskEmptyImpl<T>) then) =
      __$$TaskEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TaskEmptyImplCopyWithImpl<T, $Res>
    extends _$TaskStateCopyWithImpl<T, $Res, _$TaskEmptyImpl<T>>
    implements _$$TaskEmptyImplCopyWith<T, $Res> {
  __$$TaskEmptyImplCopyWithImpl(
      _$TaskEmptyImpl<T> _value, $Res Function(_$TaskEmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskEmptyImpl<T> implements _TaskEmpty<T> {
  const _$TaskEmptyImpl();

  @override
  String toString() {
    return 'TaskState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskInitial<T> value) initial,
    required TResult Function(_TaskLoading<T> value) loading,
    required TResult Function(_TaskSuccess<T> value) success,
    required TResult Function(_TaskFailed<T> value) failed,
    required TResult Function(_TaskEmpty<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskInitial<T> value)? initial,
    TResult? Function(_TaskLoading<T> value)? loading,
    TResult? Function(_TaskSuccess<T> value)? success,
    TResult? Function(_TaskFailed<T> value)? failed,
    TResult? Function(_TaskEmpty<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskInitial<T> value)? initial,
    TResult Function(_TaskLoading<T> value)? loading,
    TResult Function(_TaskSuccess<T> value)? success,
    TResult Function(_TaskFailed<T> value)? failed,
    TResult Function(_TaskEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _TaskEmpty<T> implements TaskState<T> {
  const factory _TaskEmpty() = _$TaskEmptyImpl<T>;
}
