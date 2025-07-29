// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.role.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRoleModel {
  UserRoleEnum get role => throw _privateConstructorUsedError;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRoleModelCopyWith<UserRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleModelCopyWith<$Res> {
  factory $UserRoleModelCopyWith(
          UserRoleModel value, $Res Function(UserRoleModel) then) =
      _$UserRoleModelCopyWithImpl<$Res, UserRoleModel>;
  @useResult
  $Res call({UserRoleEnum role});
}

/// @nodoc
class _$UserRoleModelCopyWithImpl<$Res, $Val extends UserRoleModel>
    implements $UserRoleModelCopyWith<$Res> {
  _$UserRoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRoleModelImplCopyWith<$Res>
    implements $UserRoleModelCopyWith<$Res> {
  factory _$$UserRoleModelImplCopyWith(
          _$UserRoleModelImpl value, $Res Function(_$UserRoleModelImpl) then) =
      __$$UserRoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRoleEnum role});
}

/// @nodoc
class __$$UserRoleModelImplCopyWithImpl<$Res>
    extends _$UserRoleModelCopyWithImpl<$Res, _$UserRoleModelImpl>
    implements _$$UserRoleModelImplCopyWith<$Res> {
  __$$UserRoleModelImplCopyWithImpl(
      _$UserRoleModelImpl _value, $Res Function(_$UserRoleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$UserRoleModelImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleEnum,
    ));
  }
}

/// @nodoc

class _$UserRoleModelImpl implements _UserRoleModel {
  const _$UserRoleModelImpl({required this.role});

  @override
  final UserRoleEnum role;

  @override
  String toString() {
    return 'UserRoleModel(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRoleModelImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRoleModelImplCopyWith<_$UserRoleModelImpl> get copyWith =>
      __$$UserRoleModelImplCopyWithImpl<_$UserRoleModelImpl>(this, _$identity);
}

abstract class _UserRoleModel implements UserRoleModel {
  const factory _UserRoleModel({required final UserRoleEnum role}) =
      _$UserRoleModelImpl;

  @override
  UserRoleEnum get role;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRoleModelImplCopyWith<_$UserRoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
