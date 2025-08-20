// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(JobEntity data) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(JobEntity data)? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(JobEntity data)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JobInitial value) initial,
    required TResult Function(_JobLoading value) loading,
    required TResult Function(_JobSuccess value) success,
    required TResult Function(_JobFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JobInitial value)? initial,
    TResult? Function(_JobLoading value)? loading,
    TResult? Function(_JobSuccess value)? success,
    TResult? Function(_JobFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobInitial value)? initial,
    TResult Function(_JobLoading value)? loading,
    TResult Function(_JobSuccess value)? success,
    TResult Function(_JobFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStateCopyWith<$Res> {
  factory $JobStateCopyWith(JobState value, $Res Function(JobState) then) =
      _$JobStateCopyWithImpl<$Res, JobState>;
}

/// @nodoc
class _$JobStateCopyWithImpl<$Res, $Val extends JobState>
    implements $JobStateCopyWith<$Res> {
  _$JobStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$JobInitialImplCopyWith<$Res> {
  factory _$$JobInitialImplCopyWith(
          _$JobInitialImpl value, $Res Function(_$JobInitialImpl) then) =
      __$$JobInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobInitialImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$JobInitialImpl>
    implements _$$JobInitialImplCopyWith<$Res> {
  __$$JobInitialImplCopyWithImpl(
      _$JobInitialImpl _value, $Res Function(_$JobInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JobInitialImpl implements _JobInitial {
  const _$JobInitialImpl();

  @override
  String toString() {
    return 'JobState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(JobEntity data) success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(JobEntity data)? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(JobEntity data)? success,
    TResult Function(String message)? failed,
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
    required TResult Function(_JobInitial value) initial,
    required TResult Function(_JobLoading value) loading,
    required TResult Function(_JobSuccess value) success,
    required TResult Function(_JobFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JobInitial value)? initial,
    TResult? Function(_JobLoading value)? loading,
    TResult? Function(_JobSuccess value)? success,
    TResult? Function(_JobFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobInitial value)? initial,
    TResult Function(_JobLoading value)? loading,
    TResult Function(_JobSuccess value)? success,
    TResult Function(_JobFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _JobInitial implements JobState {
  const factory _JobInitial() = _$JobInitialImpl;
}

/// @nodoc
abstract class _$$JobLoadingImplCopyWith<$Res> {
  factory _$$JobLoadingImplCopyWith(
          _$JobLoadingImpl value, $Res Function(_$JobLoadingImpl) then) =
      __$$JobLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobLoadingImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$JobLoadingImpl>
    implements _$$JobLoadingImplCopyWith<$Res> {
  __$$JobLoadingImplCopyWithImpl(
      _$JobLoadingImpl _value, $Res Function(_$JobLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JobLoadingImpl implements _JobLoading {
  const _$JobLoadingImpl();

  @override
  String toString() {
    return 'JobState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(JobEntity data) success,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(JobEntity data)? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(JobEntity data)? success,
    TResult Function(String message)? failed,
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
    required TResult Function(_JobInitial value) initial,
    required TResult Function(_JobLoading value) loading,
    required TResult Function(_JobSuccess value) success,
    required TResult Function(_JobFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JobInitial value)? initial,
    TResult? Function(_JobLoading value)? loading,
    TResult? Function(_JobSuccess value)? success,
    TResult? Function(_JobFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobInitial value)? initial,
    TResult Function(_JobLoading value)? loading,
    TResult Function(_JobSuccess value)? success,
    TResult Function(_JobFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _JobLoading implements JobState {
  const factory _JobLoading() = _$JobLoadingImpl;
}

/// @nodoc
abstract class _$$JobSuccessImplCopyWith<$Res> {
  factory _$$JobSuccessImplCopyWith(
          _$JobSuccessImpl value, $Res Function(_$JobSuccessImpl) then) =
      __$$JobSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JobEntity data});
}

/// @nodoc
class __$$JobSuccessImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$JobSuccessImpl>
    implements _$$JobSuccessImplCopyWith<$Res> {
  __$$JobSuccessImplCopyWithImpl(
      _$JobSuccessImpl _value, $Res Function(_$JobSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JobSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as JobEntity,
    ));
  }
}

/// @nodoc

class _$JobSuccessImpl implements _JobSuccess {
  const _$JobSuccessImpl(this.data);

  @override
  final JobEntity data;

  @override
  String toString() {
    return 'JobState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobSuccessImplCopyWith<_$JobSuccessImpl> get copyWith =>
      __$$JobSuccessImplCopyWithImpl<_$JobSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(JobEntity data) success,
    required TResult Function(String message) failed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(JobEntity data)? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(JobEntity data)? success,
    TResult Function(String message)? failed,
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
    required TResult Function(_JobInitial value) initial,
    required TResult Function(_JobLoading value) loading,
    required TResult Function(_JobSuccess value) success,
    required TResult Function(_JobFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JobInitial value)? initial,
    TResult? Function(_JobLoading value)? loading,
    TResult? Function(_JobSuccess value)? success,
    TResult? Function(_JobFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobInitial value)? initial,
    TResult Function(_JobLoading value)? loading,
    TResult Function(_JobSuccess value)? success,
    TResult Function(_JobFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _JobSuccess implements JobState {
  const factory _JobSuccess(final JobEntity data) = _$JobSuccessImpl;

  JobEntity get data;

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobSuccessImplCopyWith<_$JobSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobFailedImplCopyWith<$Res> {
  factory _$$JobFailedImplCopyWith(
          _$JobFailedImpl value, $Res Function(_$JobFailedImpl) then) =
      __$$JobFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$JobFailedImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$JobFailedImpl>
    implements _$$JobFailedImplCopyWith<$Res> {
  __$$JobFailedImplCopyWithImpl(
      _$JobFailedImpl _value, $Res Function(_$JobFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$JobFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JobFailedImpl implements _JobFailed {
  const _$JobFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'JobState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobFailedImplCopyWith<_$JobFailedImpl> get copyWith =>
      __$$JobFailedImplCopyWithImpl<_$JobFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(JobEntity data) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(JobEntity data)? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(JobEntity data)? success,
    TResult Function(String message)? failed,
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
    required TResult Function(_JobInitial value) initial,
    required TResult Function(_JobLoading value) loading,
    required TResult Function(_JobSuccess value) success,
    required TResult Function(_JobFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JobInitial value)? initial,
    TResult? Function(_JobLoading value)? loading,
    TResult? Function(_JobSuccess value)? success,
    TResult? Function(_JobFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobInitial value)? initial,
    TResult Function(_JobLoading value)? loading,
    TResult Function(_JobSuccess value)? success,
    TResult Function(_JobFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _JobFailed implements JobState {
  const factory _JobFailed(final String message) = _$JobFailedImpl;

  String get message;

  /// Create a copy of JobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobFailedImplCopyWith<_$JobFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
