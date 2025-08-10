// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get emoji => throw _privateConstructorUsedError;
  String? get unicode => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryEntityCopyWith<CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEntityCopyWith<$Res> {
  factory $CountryEntityCopyWith(
          CountryEntity value, $Res Function(CountryEntity) then) =
      _$CountryEntityCopyWithImpl<$Res, CountryEntity>;
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? emoji,
      String? unicode,
      String? image,
      bool? isSelected});
}

/// @nodoc
class _$CountryEntityCopyWithImpl<$Res, $Val extends CountryEntity>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? emoji = freezed,
    Object? unicode = freezed,
    Object? image = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      unicode: freezed == unicode
          ? _value.unicode
          : unicode // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryEntityImplCopyWith<$Res>
    implements $CountryEntityCopyWith<$Res> {
  factory _$$CountryEntityImplCopyWith(
          _$CountryEntityImpl value, $Res Function(_$CountryEntityImpl) then) =
      __$$CountryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? emoji,
      String? unicode,
      String? image,
      bool? isSelected});
}

/// @nodoc
class __$$CountryEntityImplCopyWithImpl<$Res>
    extends _$CountryEntityCopyWithImpl<$Res, _$CountryEntityImpl>
    implements _$$CountryEntityImplCopyWith<$Res> {
  __$$CountryEntityImplCopyWithImpl(
      _$CountryEntityImpl _value, $Res Function(_$CountryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? emoji = freezed,
    Object? unicode = freezed,
    Object? image = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$CountryEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      unicode: freezed == unicode
          ? _value.unicode
          : unicode // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CountryEntityImpl implements _CountryEntity {
  const _$CountryEntityImpl(
      {this.name,
      this.code,
      this.emoji,
      this.unicode,
      this.image,
      this.isSelected});

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? emoji;
  @override
  final String? unicode;
  @override
  final String? image;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'CountryEntity(name: $name, code: $code, emoji: $emoji, unicode: $unicode, image: $image, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.unicode, unicode) || other.unicode == unicode) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, code, emoji, unicode, image, isSelected);

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryEntityImplCopyWith<_$CountryEntityImpl> get copyWith =>
      __$$CountryEntityImplCopyWithImpl<_$CountryEntityImpl>(this, _$identity);
}

abstract class _CountryEntity implements CountryEntity {
  const factory _CountryEntity(
      {final String? name,
      final String? code,
      final String? emoji,
      final String? unicode,
      final String? image,
      final bool? isSelected}) = _$CountryEntityImpl;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get emoji;
  @override
  String? get unicode;
  @override
  String? get image;
  @override
  bool? get isSelected;

  /// Create a copy of CountryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryEntityImplCopyWith<_$CountryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
