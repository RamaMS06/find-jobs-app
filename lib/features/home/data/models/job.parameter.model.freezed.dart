// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.parameter.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobParamters _$JobParamtersFromJson(Map<String, dynamic> json) {
  return _JobParamters.fromJson(json);
}

/// @nodoc
mixin _$JobParamters {
  String? get query => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get numPages => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  /// Serializes this JobParamters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobParamters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobParamtersCopyWith<JobParamters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobParamtersCopyWith<$Res> {
  factory $JobParamtersCopyWith(
          JobParamters value, $Res Function(JobParamters) then) =
      _$JobParamtersCopyWithImpl<$Res, JobParamters>;
  @useResult
  $Res call(
      {String? query,
      int? page,
      int? numPages,
      String? country,
      String? language});
}

/// @nodoc
class _$JobParamtersCopyWithImpl<$Res, $Val extends JobParamters>
    implements $JobParamtersCopyWith<$Res> {
  _$JobParamtersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobParamters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
    Object? numPages = freezed,
    Object? country = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      numPages: freezed == numPages
          ? _value.numPages
          : numPages // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobParamtersImplCopyWith<$Res>
    implements $JobParamtersCopyWith<$Res> {
  factory _$$JobParamtersImplCopyWith(
          _$JobParamtersImpl value, $Res Function(_$JobParamtersImpl) then) =
      __$$JobParamtersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? query,
      int? page,
      int? numPages,
      String? country,
      String? language});
}

/// @nodoc
class __$$JobParamtersImplCopyWithImpl<$Res>
    extends _$JobParamtersCopyWithImpl<$Res, _$JobParamtersImpl>
    implements _$$JobParamtersImplCopyWith<$Res> {
  __$$JobParamtersImplCopyWithImpl(
      _$JobParamtersImpl _value, $Res Function(_$JobParamtersImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobParamters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
    Object? numPages = freezed,
    Object? country = freezed,
    Object? language = freezed,
  }) {
    return _then(_$JobParamtersImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      numPages: freezed == numPages
          ? _value.numPages
          : numPages // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobParamtersImpl implements _JobParamters {
  const _$JobParamtersImpl(
      {this.query, this.page, this.numPages, this.country, this.language});

  factory _$JobParamtersImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobParamtersImplFromJson(json);

  @override
  final String? query;
  @override
  final int? page;
  @override
  final int? numPages;
  @override
  final String? country;
  @override
  final String? language;

  @override
  String toString() {
    return 'JobParamters(query: $query, page: $page, numPages: $numPages, country: $country, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobParamtersImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.numPages, numPages) ||
                other.numPages == numPages) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, query, page, numPages, country, language);

  /// Create a copy of JobParamters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobParamtersImplCopyWith<_$JobParamtersImpl> get copyWith =>
      __$$JobParamtersImplCopyWithImpl<_$JobParamtersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobParamtersImplToJson(
      this,
    );
  }
}

abstract class _JobParamters implements JobParamters {
  const factory _JobParamters(
      {final String? query,
      final int? page,
      final int? numPages,
      final String? country,
      final String? language}) = _$JobParamtersImpl;

  factory _JobParamters.fromJson(Map<String, dynamic> json) =
      _$JobParamtersImpl.fromJson;

  @override
  String? get query;
  @override
  int? get page;
  @override
  int? get numPages;
  @override
  String? get country;
  @override
  String? get language;

  /// Create a copy of JobParamters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobParamtersImplCopyWith<_$JobParamtersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
