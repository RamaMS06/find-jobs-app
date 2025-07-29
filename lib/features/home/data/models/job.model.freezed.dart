// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  String? get status => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;
  JobParamters? get parameters => throw _privateConstructorUsedError;
  List<JobDataModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this JobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call(
      {String? status,
      String? requestId,
      JobParamters? parameters,
      List<JobDataModel>? data});

  $JobParamtersCopyWith<$Res>? get parameters;
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? requestId = freezed,
    Object? parameters = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as JobParamters?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobDataModel>?,
    ) as $Val);
  }

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobParamtersCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $JobParamtersCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobModelImplCopyWith<$Res>
    implements $JobModelCopyWith<$Res> {
  factory _$$JobModelImplCopyWith(
          _$JobModelImpl value, $Res Function(_$JobModelImpl) then) =
      __$$JobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? requestId,
      JobParamters? parameters,
      List<JobDataModel>? data});

  @override
  $JobParamtersCopyWith<$Res>? get parameters;
}

/// @nodoc
class __$$JobModelImplCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$JobModelImpl>
    implements _$$JobModelImplCopyWith<$Res> {
  __$$JobModelImplCopyWithImpl(
      _$JobModelImpl _value, $Res Function(_$JobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? requestId = freezed,
    Object? parameters = freezed,
    Object? data = freezed,
  }) {
    return _then(_$JobModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as JobParamters?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobModelImpl implements _JobModel {
  const _$JobModelImpl(
      {this.status,
      this.requestId,
      this.parameters,
      final List<JobDataModel>? data})
      : _data = data;

  factory _$JobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? requestId;
  @override
  final JobParamters? parameters;
  final List<JobDataModel>? _data;
  @override
  List<JobDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobModel(status: $status, requestId: $requestId, parameters: $parameters, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, requestId, parameters,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      __$$JobModelImplCopyWithImpl<_$JobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobModelImplToJson(
      this,
    );
  }
}

abstract class _JobModel implements JobModel {
  const factory _JobModel(
      {final String? status,
      final String? requestId,
      final JobParamters? parameters,
      final List<JobDataModel>? data}) = _$JobModelImpl;

  factory _JobModel.fromJson(Map<String, dynamic> json) =
      _$JobModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get requestId;
  @override
  JobParamters? get parameters;
  @override
  List<JobDataModel>? get data;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
