// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity?> countries) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity?> countries)? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity?> countries)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryInitial value) initial,
    required TResult Function(_CountryLoading value) loading,
    required TResult Function(_CountrySuccess value) success,
    required TResult Function(_CountryFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryInitial value)? initial,
    TResult? Function(_CountryLoading value)? loading,
    TResult? Function(_CountrySuccess value)? success,
    TResult? Function(_CountryFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryInitial value)? initial,
    TResult Function(_CountryLoading value)? loading,
    TResult Function(_CountrySuccess value)? success,
    TResult Function(_CountryFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CountryInitialImplCopyWith<$Res> {
  factory _$$CountryInitialImplCopyWith(_$CountryInitialImpl value,
          $Res Function(_$CountryInitialImpl) then) =
      __$$CountryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryInitialImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryInitialImpl>
    implements _$$CountryInitialImplCopyWith<$Res> {
  __$$CountryInitialImplCopyWithImpl(
      _$CountryInitialImpl _value, $Res Function(_$CountryInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountryInitialImpl implements _CountryInitial {
  const _$CountryInitialImpl();

  @override
  String toString() {
    return 'CountryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity?> countries) success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity?> countries)? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity?> countries)? success,
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
    required TResult Function(_CountryInitial value) initial,
    required TResult Function(_CountryLoading value) loading,
    required TResult Function(_CountrySuccess value) success,
    required TResult Function(_CountryFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryInitial value)? initial,
    TResult? Function(_CountryLoading value)? loading,
    TResult? Function(_CountrySuccess value)? success,
    TResult? Function(_CountryFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryInitial value)? initial,
    TResult Function(_CountryLoading value)? loading,
    TResult Function(_CountrySuccess value)? success,
    TResult Function(_CountryFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CountryInitial implements CountryState {
  const factory _CountryInitial() = _$CountryInitialImpl;
}

/// @nodoc
abstract class _$$CountryLoadingImplCopyWith<$Res> {
  factory _$$CountryLoadingImplCopyWith(_$CountryLoadingImpl value,
          $Res Function(_$CountryLoadingImpl) then) =
      __$$CountryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryLoadingImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryLoadingImpl>
    implements _$$CountryLoadingImplCopyWith<$Res> {
  __$$CountryLoadingImplCopyWithImpl(
      _$CountryLoadingImpl _value, $Res Function(_$CountryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountryLoadingImpl implements _CountryLoading {
  const _$CountryLoadingImpl();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity?> countries) success,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity?> countries)? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity?> countries)? success,
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
    required TResult Function(_CountryInitial value) initial,
    required TResult Function(_CountryLoading value) loading,
    required TResult Function(_CountrySuccess value) success,
    required TResult Function(_CountryFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryInitial value)? initial,
    TResult? Function(_CountryLoading value)? loading,
    TResult? Function(_CountrySuccess value)? success,
    TResult? Function(_CountryFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryInitial value)? initial,
    TResult Function(_CountryLoading value)? loading,
    TResult Function(_CountrySuccess value)? success,
    TResult Function(_CountryFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CountryLoading implements CountryState {
  const factory _CountryLoading() = _$CountryLoadingImpl;
}

/// @nodoc
abstract class _$$CountrySuccessImplCopyWith<$Res> {
  factory _$$CountrySuccessImplCopyWith(_$CountrySuccessImpl value,
          $Res Function(_$CountrySuccessImpl) then) =
      __$$CountrySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CountryEntity?> countries});
}

/// @nodoc
class __$$CountrySuccessImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountrySuccessImpl>
    implements _$$CountrySuccessImplCopyWith<$Res> {
  __$$CountrySuccessImplCopyWithImpl(
      _$CountrySuccessImpl _value, $Res Function(_$CountrySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountrySuccessImpl(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity?>,
    ));
  }
}

/// @nodoc

class _$CountrySuccessImpl implements _CountrySuccess {
  const _$CountrySuccessImpl(final List<CountryEntity?> countries)
      : _countries = countries;

  final List<CountryEntity?> _countries;
  @override
  List<CountryEntity?> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'CountryState.success(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountrySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountrySuccessImplCopyWith<_$CountrySuccessImpl> get copyWith =>
      __$$CountrySuccessImplCopyWithImpl<_$CountrySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity?> countries) success,
    required TResult Function(String message) failed,
  }) {
    return success(countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity?> countries)? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity?> countries)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryInitial value) initial,
    required TResult Function(_CountryLoading value) loading,
    required TResult Function(_CountrySuccess value) success,
    required TResult Function(_CountryFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryInitial value)? initial,
    TResult? Function(_CountryLoading value)? loading,
    TResult? Function(_CountrySuccess value)? success,
    TResult? Function(_CountryFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryInitial value)? initial,
    TResult Function(_CountryLoading value)? loading,
    TResult Function(_CountrySuccess value)? success,
    TResult Function(_CountryFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CountrySuccess implements CountryState {
  const factory _CountrySuccess(final List<CountryEntity?> countries) =
      _$CountrySuccessImpl;

  List<CountryEntity?> get countries;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountrySuccessImplCopyWith<_$CountrySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountryFailedImplCopyWith<$Res> {
  factory _$$CountryFailedImplCopyWith(
          _$CountryFailedImpl value, $Res Function(_$CountryFailedImpl) then) =
      __$$CountryFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CountryFailedImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryFailedImpl>
    implements _$$CountryFailedImplCopyWith<$Res> {
  __$$CountryFailedImplCopyWithImpl(
      _$CountryFailedImpl _value, $Res Function(_$CountryFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CountryFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountryFailedImpl implements _CountryFailed {
  const _$CountryFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CountryState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryFailedImplCopyWith<_$CountryFailedImpl> get copyWith =>
      __$$CountryFailedImplCopyWithImpl<_$CountryFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity?> countries) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity?> countries)? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity?> countries)? success,
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
    required TResult Function(_CountryInitial value) initial,
    required TResult Function(_CountryLoading value) loading,
    required TResult Function(_CountrySuccess value) success,
    required TResult Function(_CountryFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryInitial value)? initial,
    TResult? Function(_CountryLoading value)? loading,
    TResult? Function(_CountrySuccess value)? success,
    TResult? Function(_CountryFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryInitial value)? initial,
    TResult Function(_CountryLoading value)? loading,
    TResult Function(_CountrySuccess value)? success,
    TResult Function(_CountryFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CountryFailed implements CountryState {
  const factory _CountryFailed(final String message) = _$CountryFailedImpl;

  String get message;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryFailedImplCopyWith<_$CountryFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
