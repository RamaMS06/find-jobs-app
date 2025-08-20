// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.highlight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobHighlights _$JobHighlightsFromJson(Map<String, dynamic> json) {
  return _JobHighlights.fromJson(json);
}

/// @nodoc
mixin _$JobHighlights {
  List<String>? get qualifications => throw _privateConstructorUsedError;
  List<String>? get benefits => throw _privateConstructorUsedError;
  List<String>? get responsibilities => throw _privateConstructorUsedError;

  /// Serializes this JobHighlights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobHighlights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobHighlightsCopyWith<JobHighlights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobHighlightsCopyWith<$Res> {
  factory $JobHighlightsCopyWith(
          JobHighlights value, $Res Function(JobHighlights) then) =
      _$JobHighlightsCopyWithImpl<$Res, JobHighlights>;
  @useResult
  $Res call(
      {List<String>? qualifications,
      List<String>? benefits,
      List<String>? responsibilities});
}

/// @nodoc
class _$JobHighlightsCopyWithImpl<$Res, $Val extends JobHighlights>
    implements $JobHighlightsCopyWith<$Res> {
  _$JobHighlightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobHighlights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualifications = freezed,
    Object? benefits = freezed,
    Object? responsibilities = freezed,
  }) {
    return _then(_value.copyWith(
      qualifications: freezed == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      benefits: freezed == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responsibilities: freezed == responsibilities
          ? _value.responsibilities
          : responsibilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobHighlightsImplCopyWith<$Res>
    implements $JobHighlightsCopyWith<$Res> {
  factory _$$JobHighlightsImplCopyWith(
          _$JobHighlightsImpl value, $Res Function(_$JobHighlightsImpl) then) =
      __$$JobHighlightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? qualifications,
      List<String>? benefits,
      List<String>? responsibilities});
}

/// @nodoc
class __$$JobHighlightsImplCopyWithImpl<$Res>
    extends _$JobHighlightsCopyWithImpl<$Res, _$JobHighlightsImpl>
    implements _$$JobHighlightsImplCopyWith<$Res> {
  __$$JobHighlightsImplCopyWithImpl(
      _$JobHighlightsImpl _value, $Res Function(_$JobHighlightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobHighlights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualifications = freezed,
    Object? benefits = freezed,
    Object? responsibilities = freezed,
  }) {
    return _then(_$JobHighlightsImpl(
      qualifications: freezed == qualifications
          ? _value._qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      benefits: freezed == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responsibilities: freezed == responsibilities
          ? _value._responsibilities
          : responsibilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobHighlightsImpl implements _JobHighlights {
  const _$JobHighlightsImpl(
      {final List<String>? qualifications,
      final List<String>? benefits,
      final List<String>? responsibilities})
      : _qualifications = qualifications,
        _benefits = benefits,
        _responsibilities = responsibilities;

  factory _$JobHighlightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobHighlightsImplFromJson(json);

  final List<String>? _qualifications;
  @override
  List<String>? get qualifications {
    final value = _qualifications;
    if (value == null) return null;
    if (_qualifications is EqualUnmodifiableListView) return _qualifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _benefits;
  @override
  List<String>? get benefits {
    final value = _benefits;
    if (value == null) return null;
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _responsibilities;
  @override
  List<String>? get responsibilities {
    final value = _responsibilities;
    if (value == null) return null;
    if (_responsibilities is EqualUnmodifiableListView)
      return _responsibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobHighlights(qualifications: $qualifications, benefits: $benefits, responsibilities: $responsibilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobHighlightsImpl &&
            const DeepCollectionEquality()
                .equals(other._qualifications, _qualifications) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            const DeepCollectionEquality()
                .equals(other._responsibilities, _responsibilities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_qualifications),
      const DeepCollectionEquality().hash(_benefits),
      const DeepCollectionEquality().hash(_responsibilities));

  /// Create a copy of JobHighlights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobHighlightsImplCopyWith<_$JobHighlightsImpl> get copyWith =>
      __$$JobHighlightsImplCopyWithImpl<_$JobHighlightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobHighlightsImplToJson(
      this,
    );
  }
}

abstract class _JobHighlights implements JobHighlights {
  const factory _JobHighlights(
      {final List<String>? qualifications,
      final List<String>? benefits,
      final List<String>? responsibilities}) = _$JobHighlightsImpl;

  factory _JobHighlights.fromJson(Map<String, dynamic> json) =
      _$JobHighlightsImpl.fromJson;

  @override
  List<String>? get qualifications;
  @override
  List<String>? get benefits;
  @override
  List<String>? get responsibilities;

  /// Create a copy of JobHighlights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobHighlightsImplCopyWith<_$JobHighlightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
