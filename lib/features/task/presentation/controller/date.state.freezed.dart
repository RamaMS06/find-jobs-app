// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DateTime> data)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DateTime> data)? success,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateStateCopyWith<$Res> {
  factory $DateStateCopyWith(DateState value, $Res Function(DateState) then) =
      _$DateStateCopyWithImpl<$Res, DateState>;
}

/// @nodoc
class _$DateStateCopyWithImpl<$Res, $Val extends DateState>
    implements $DateStateCopyWith<$Res> {
  _$DateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DateInitialImplCopyWith<$Res> {
  factory _$$DateInitialImplCopyWith(
          _$DateInitialImpl value, $Res Function(_$DateInitialImpl) then) =
      __$$DateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateInitialImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateInitialImpl>
    implements _$$DateInitialImplCopyWith<$Res> {
  __$$DateInitialImplCopyWithImpl(
      _$DateInitialImpl _value, $Res Function(_$DateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DateInitialImpl implements _DateInitial {
  const _$DateInitialImpl();

  @override
  String toString() {
    return 'DateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
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
    TResult? Function(List<DateTime> data)? success,
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
    TResult Function(List<DateTime> data)? success,
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
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DateInitial implements DateState {
  const factory _DateInitial() = _$DateInitialImpl;
}

/// @nodoc
abstract class _$$DateLoadingImplCopyWith<$Res> {
  factory _$$DateLoadingImplCopyWith(
          _$DateLoadingImpl value, $Res Function(_$DateLoadingImpl) then) =
      __$$DateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateLoadingImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateLoadingImpl>
    implements _$$DateLoadingImplCopyWith<$Res> {
  __$$DateLoadingImplCopyWithImpl(
      _$DateLoadingImpl _value, $Res Function(_$DateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DateLoadingImpl implements _DateLoading {
  const _$DateLoadingImpl();

  @override
  String toString() {
    return 'DateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
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
    TResult? Function(List<DateTime> data)? success,
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
    TResult Function(List<DateTime> data)? success,
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
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DateLoading implements DateState {
  const factory _DateLoading() = _$DateLoadingImpl;
}

/// @nodoc
abstract class _$$DateSuccessImplCopyWith<$Res> {
  factory _$$DateSuccessImplCopyWith(
          _$DateSuccessImpl value, $Res Function(_$DateSuccessImpl) then) =
      __$$DateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DateTime> data});
}

/// @nodoc
class __$$DateSuccessImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateSuccessImpl>
    implements _$$DateSuccessImplCopyWith<$Res> {
  __$$DateSuccessImplCopyWithImpl(
      _$DateSuccessImpl _value, $Res Function(_$DateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DateSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$DateSuccessImpl implements _DateSuccess {
  const _$DateSuccessImpl(final List<DateTime> data) : _data = data;

  final List<DateTime> _data;
  @override
  List<DateTime> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DateState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSuccessImplCopyWith<_$DateSuccessImpl> get copyWith =>
      __$$DateSuccessImplCopyWithImpl<_$DateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
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
    TResult? Function(List<DateTime> data)? success,
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
    TResult Function(List<DateTime> data)? success,
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
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DateSuccess implements DateState {
  const factory _DateSuccess(final List<DateTime> data) = _$DateSuccessImpl;

  List<DateTime> get data;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSuccessImplCopyWith<_$DateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateFailedImplCopyWith<$Res> {
  factory _$$DateFailedImplCopyWith(
          _$DateFailedImpl value, $Res Function(_$DateFailedImpl) then) =
      __$$DateFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DateFailedImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateFailedImpl>
    implements _$$DateFailedImplCopyWith<$Res> {
  __$$DateFailedImplCopyWithImpl(
      _$DateFailedImpl _value, $Res Function(_$DateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DateFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateFailedImpl implements _DateFailed {
  const _$DateFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DateState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateFailedImplCopyWith<_$DateFailedImpl> get copyWith =>
      __$$DateFailedImplCopyWithImpl<_$DateFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
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
    TResult? Function(List<DateTime> data)? success,
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
    TResult Function(List<DateTime> data)? success,
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
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _DateFailed implements DateState {
  const factory _DateFailed(final String message) = _$DateFailedImpl;

  String get message;

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateFailedImplCopyWith<_$DateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateEmptyImplCopyWith<$Res> {
  factory _$$DateEmptyImplCopyWith(
          _$DateEmptyImpl value, $Res Function(_$DateEmptyImpl) then) =
      __$$DateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateEmptyImplCopyWithImpl<$Res>
    extends _$DateStateCopyWithImpl<$Res, _$DateEmptyImpl>
    implements _$$DateEmptyImplCopyWith<$Res> {
  __$$DateEmptyImplCopyWithImpl(
      _$DateEmptyImpl _value, $Res Function(_$DateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DateEmptyImpl implements _DateEmpty {
  const _$DateEmptyImpl();

  @override
  String toString() {
    return 'DateState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DateTime> data) success,
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
    TResult? Function(List<DateTime> data)? success,
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
    TResult Function(List<DateTime> data)? success,
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
    required TResult Function(_DateInitial value) initial,
    required TResult Function(_DateLoading value) loading,
    required TResult Function(_DateSuccess value) success,
    required TResult Function(_DateFailed value) failed,
    required TResult Function(_DateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateInitial value)? initial,
    TResult? Function(_DateLoading value)? loading,
    TResult? Function(_DateSuccess value)? success,
    TResult? Function(_DateFailed value)? failed,
    TResult? Function(_DateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateInitial value)? initial,
    TResult Function(_DateLoading value)? loading,
    TResult Function(_DateSuccess value)? success,
    TResult Function(_DateFailed value)? failed,
    TResult Function(_DateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _DateEmpty implements DateState {
  const factory _DateEmpty() = _$DateEmptyImpl;
}
