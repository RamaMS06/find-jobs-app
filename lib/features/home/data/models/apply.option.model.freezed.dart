// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply.option.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyOption _$ApplyOptionFromJson(Map<String, dynamic> json) {
  return _ApplyOption.fromJson(json);
}

/// @nodoc
mixin _$ApplyOption {
  String? get publisher => throw _privateConstructorUsedError;
  String? get applyLink => throw _privateConstructorUsedError;
  bool? get isDirect => throw _privateConstructorUsedError;

  /// Serializes this ApplyOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApplyOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplyOptionCopyWith<ApplyOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyOptionCopyWith<$Res> {
  factory $ApplyOptionCopyWith(
          ApplyOption value, $Res Function(ApplyOption) then) =
      _$ApplyOptionCopyWithImpl<$Res, ApplyOption>;
  @useResult
  $Res call({String? publisher, String? applyLink, bool? isDirect});
}

/// @nodoc
class _$ApplyOptionCopyWithImpl<$Res, $Val extends ApplyOption>
    implements $ApplyOptionCopyWith<$Res> {
  _$ApplyOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplyOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisher = freezed,
    Object? applyLink = freezed,
    Object? isDirect = freezed,
  }) {
    return _then(_value.copyWith(
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      applyLink: freezed == applyLink
          ? _value.applyLink
          : applyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isDirect: freezed == isDirect
          ? _value.isDirect
          : isDirect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyOptionImplCopyWith<$Res>
    implements $ApplyOptionCopyWith<$Res> {
  factory _$$ApplyOptionImplCopyWith(
          _$ApplyOptionImpl value, $Res Function(_$ApplyOptionImpl) then) =
      __$$ApplyOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? publisher, String? applyLink, bool? isDirect});
}

/// @nodoc
class __$$ApplyOptionImplCopyWithImpl<$Res>
    extends _$ApplyOptionCopyWithImpl<$Res, _$ApplyOptionImpl>
    implements _$$ApplyOptionImplCopyWith<$Res> {
  __$$ApplyOptionImplCopyWithImpl(
      _$ApplyOptionImpl _value, $Res Function(_$ApplyOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplyOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisher = freezed,
    Object? applyLink = freezed,
    Object? isDirect = freezed,
  }) {
    return _then(_$ApplyOptionImpl(
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      applyLink: freezed == applyLink
          ? _value.applyLink
          : applyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isDirect: freezed == isDirect
          ? _value.isDirect
          : isDirect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyOptionImpl implements _ApplyOption {
  const _$ApplyOptionImpl({this.publisher, this.applyLink, this.isDirect});

  factory _$ApplyOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyOptionImplFromJson(json);

  @override
  final String? publisher;
  @override
  final String? applyLink;
  @override
  final bool? isDirect;

  @override
  String toString() {
    return 'ApplyOption(publisher: $publisher, applyLink: $applyLink, isDirect: $isDirect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyOptionImpl &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.applyLink, applyLink) ||
                other.applyLink == applyLink) &&
            (identical(other.isDirect, isDirect) ||
                other.isDirect == isDirect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publisher, applyLink, isDirect);

  /// Create a copy of ApplyOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyOptionImplCopyWith<_$ApplyOptionImpl> get copyWith =>
      __$$ApplyOptionImplCopyWithImpl<_$ApplyOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyOptionImplToJson(
      this,
    );
  }
}

abstract class _ApplyOption implements ApplyOption {
  const factory _ApplyOption(
      {final String? publisher,
      final String? applyLink,
      final bool? isDirect}) = _$ApplyOptionImpl;

  factory _ApplyOption.fromJson(Map<String, dynamic> json) =
      _$ApplyOptionImpl.fromJson;

  @override
  String? get publisher;
  @override
  String? get applyLink;
  @override
  bool? get isDirect;

  /// Create a copy of ApplyOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplyOptionImplCopyWith<_$ApplyOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
