// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobDataModel _$JobDataModelFromJson(Map<String, dynamic> json) {
  return _JobDataModel.fromJson(json);
}

/// @nodoc
mixin _$JobDataModel {
  String? get jobId => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get employerName => throw _privateConstructorUsedError;
  String? get employerLogo => throw _privateConstructorUsedError;
  String? get employerWebsite => throw _privateConstructorUsedError;
  String? get jobPublisher => throw _privateConstructorUsedError;
  String? get jobEmploymentType => throw _privateConstructorUsedError;
  List<String>? get jobEmploymentTypes => throw _privateConstructorUsedError;
  String? get jobApplyLink => throw _privateConstructorUsedError;
  bool? get jobApplyIsDirect => throw _privateConstructorUsedError;
  List<ApplyOption>? get applyOptions => throw _privateConstructorUsedError;
  String? get jobDescription => throw _privateConstructorUsedError;
  bool? get jobIsRemote => throw _privateConstructorUsedError;
  String? get jobPostedAt => throw _privateConstructorUsedError;
  int? get jobPostedAtTimestamp => throw _privateConstructorUsedError;
  DateTime? get jobPostedAtDatetimeUtc => throw _privateConstructorUsedError;
  String? get jobLocation => throw _privateConstructorUsedError;
  String? get jobCity => throw _privateConstructorUsedError;
  String? get jobState => throw _privateConstructorUsedError;
  String? get jobCountry => throw _privateConstructorUsedError;
  double? get jobLatitude => throw _privateConstructorUsedError;
  double? get jobLongitude => throw _privateConstructorUsedError;
  List<String>? get jobBenefits => throw _privateConstructorUsedError;
  String? get jobGoogleLink => throw _privateConstructorUsedError;
  double? get jobSalary => throw _privateConstructorUsedError;
  int? get jobMinSalary => throw _privateConstructorUsedError;
  int? get jobMaxSalary => throw _privateConstructorUsedError;
  String? get jobSalaryPeriod => throw _privateConstructorUsedError;
  JobHighlights? get jobHighlights => throw _privateConstructorUsedError;
  String? get jobOnetSoc => throw _privateConstructorUsedError;
  String? get jobOnetJobZone => throw _privateConstructorUsedError;

  /// Serializes this JobDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobDataModelCopyWith<JobDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDataModelCopyWith<$Res> {
  factory $JobDataModelCopyWith(
          JobDataModel value, $Res Function(JobDataModel) then) =
      _$JobDataModelCopyWithImpl<$Res, JobDataModel>;
  @useResult
  $Res call(
      {String? jobId,
      String? jobTitle,
      String? employerName,
      String? employerLogo,
      String? employerWebsite,
      String? jobPublisher,
      String? jobEmploymentType,
      List<String>? jobEmploymentTypes,
      String? jobApplyLink,
      bool? jobApplyIsDirect,
      List<ApplyOption>? applyOptions,
      String? jobDescription,
      bool? jobIsRemote,
      String? jobPostedAt,
      int? jobPostedAtTimestamp,
      DateTime? jobPostedAtDatetimeUtc,
      String? jobLocation,
      String? jobCity,
      String? jobState,
      String? jobCountry,
      double? jobLatitude,
      double? jobLongitude,
      List<String>? jobBenefits,
      String? jobGoogleLink,
      double? jobSalary,
      int? jobMinSalary,
      int? jobMaxSalary,
      String? jobSalaryPeriod,
      JobHighlights? jobHighlights,
      String? jobOnetSoc,
      String? jobOnetJobZone});

  $JobHighlightsCopyWith<$Res>? get jobHighlights;
}

/// @nodoc
class _$JobDataModelCopyWithImpl<$Res, $Val extends JobDataModel>
    implements $JobDataModelCopyWith<$Res> {
  _$JobDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? jobTitle = freezed,
    Object? employerName = freezed,
    Object? employerLogo = freezed,
    Object? employerWebsite = freezed,
    Object? jobPublisher = freezed,
    Object? jobEmploymentType = freezed,
    Object? jobEmploymentTypes = freezed,
    Object? jobApplyLink = freezed,
    Object? jobApplyIsDirect = freezed,
    Object? applyOptions = freezed,
    Object? jobDescription = freezed,
    Object? jobIsRemote = freezed,
    Object? jobPostedAt = freezed,
    Object? jobPostedAtTimestamp = freezed,
    Object? jobPostedAtDatetimeUtc = freezed,
    Object? jobLocation = freezed,
    Object? jobCity = freezed,
    Object? jobState = freezed,
    Object? jobCountry = freezed,
    Object? jobLatitude = freezed,
    Object? jobLongitude = freezed,
    Object? jobBenefits = freezed,
    Object? jobGoogleLink = freezed,
    Object? jobSalary = freezed,
    Object? jobMinSalary = freezed,
    Object? jobMaxSalary = freezed,
    Object? jobSalaryPeriod = freezed,
    Object? jobHighlights = freezed,
    Object? jobOnetSoc = freezed,
    Object? jobOnetJobZone = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employerName: freezed == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      employerLogo: freezed == employerLogo
          ? _value.employerLogo
          : employerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      employerWebsite: freezed == employerWebsite
          ? _value.employerWebsite
          : employerWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPublisher: freezed == jobPublisher
          ? _value.jobPublisher
          : jobPublisher // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentType: freezed == jobEmploymentType
          ? _value.jobEmploymentType
          : jobEmploymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentTypes: freezed == jobEmploymentTypes
          ? _value.jobEmploymentTypes
          : jobEmploymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jobApplyLink: freezed == jobApplyLink
          ? _value.jobApplyLink
          : jobApplyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobApplyIsDirect: freezed == jobApplyIsDirect
          ? _value.jobApplyIsDirect
          : jobApplyIsDirect // ignore: cast_nullable_to_non_nullable
              as bool?,
      applyOptions: freezed == applyOptions
          ? _value.applyOptions
          : applyOptions // ignore: cast_nullable_to_non_nullable
              as List<ApplyOption>?,
      jobDescription: freezed == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      jobIsRemote: freezed == jobIsRemote
          ? _value.jobIsRemote
          : jobIsRemote // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobPostedAt: freezed == jobPostedAt
          ? _value.jobPostedAt
          : jobPostedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPostedAtTimestamp: freezed == jobPostedAtTimestamp
          ? _value.jobPostedAtTimestamp
          : jobPostedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPostedAtDatetimeUtc: freezed == jobPostedAtDatetimeUtc
          ? _value.jobPostedAtDatetimeUtc
          : jobPostedAtDatetimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jobLocation: freezed == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCity: freezed == jobCity
          ? _value.jobCity
          : jobCity // ignore: cast_nullable_to_non_nullable
              as String?,
      jobState: freezed == jobState
          ? _value.jobState
          : jobState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCountry: freezed == jobCountry
          ? _value.jobCountry
          : jobCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLatitude: freezed == jobLatitude
          ? _value.jobLatitude
          : jobLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      jobLongitude: freezed == jobLongitude
          ? _value.jobLongitude
          : jobLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      jobBenefits: freezed == jobBenefits
          ? _value.jobBenefits
          : jobBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jobGoogleLink: freezed == jobGoogleLink
          ? _value.jobGoogleLink
          : jobGoogleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobSalary: freezed == jobSalary
          ? _value.jobSalary
          : jobSalary // ignore: cast_nullable_to_non_nullable
              as double?,
      jobMinSalary: freezed == jobMinSalary
          ? _value.jobMinSalary
          : jobMinSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobMaxSalary: freezed == jobMaxSalary
          ? _value.jobMaxSalary
          : jobMaxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobSalaryPeriod: freezed == jobSalaryPeriod
          ? _value.jobSalaryPeriod
          : jobSalaryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      jobHighlights: freezed == jobHighlights
          ? _value.jobHighlights
          : jobHighlights // ignore: cast_nullable_to_non_nullable
              as JobHighlights?,
      jobOnetSoc: freezed == jobOnetSoc
          ? _value.jobOnetSoc
          : jobOnetSoc // ignore: cast_nullable_to_non_nullable
              as String?,
      jobOnetJobZone: freezed == jobOnetJobZone
          ? _value.jobOnetJobZone
          : jobOnetJobZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobHighlightsCopyWith<$Res>? get jobHighlights {
    if (_value.jobHighlights == null) {
      return null;
    }

    return $JobHighlightsCopyWith<$Res>(_value.jobHighlights!, (value) {
      return _then(_value.copyWith(jobHighlights: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobDataModelImplCopyWith<$Res>
    implements $JobDataModelCopyWith<$Res> {
  factory _$$JobDataModelImplCopyWith(
          _$JobDataModelImpl value, $Res Function(_$JobDataModelImpl) then) =
      __$$JobDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? jobId,
      String? jobTitle,
      String? employerName,
      String? employerLogo,
      String? employerWebsite,
      String? jobPublisher,
      String? jobEmploymentType,
      List<String>? jobEmploymentTypes,
      String? jobApplyLink,
      bool? jobApplyIsDirect,
      List<ApplyOption>? applyOptions,
      String? jobDescription,
      bool? jobIsRemote,
      String? jobPostedAt,
      int? jobPostedAtTimestamp,
      DateTime? jobPostedAtDatetimeUtc,
      String? jobLocation,
      String? jobCity,
      String? jobState,
      String? jobCountry,
      double? jobLatitude,
      double? jobLongitude,
      List<String>? jobBenefits,
      String? jobGoogleLink,
      double? jobSalary,
      int? jobMinSalary,
      int? jobMaxSalary,
      String? jobSalaryPeriod,
      JobHighlights? jobHighlights,
      String? jobOnetSoc,
      String? jobOnetJobZone});

  @override
  $JobHighlightsCopyWith<$Res>? get jobHighlights;
}

/// @nodoc
class __$$JobDataModelImplCopyWithImpl<$Res>
    extends _$JobDataModelCopyWithImpl<$Res, _$JobDataModelImpl>
    implements _$$JobDataModelImplCopyWith<$Res> {
  __$$JobDataModelImplCopyWithImpl(
      _$JobDataModelImpl _value, $Res Function(_$JobDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? jobTitle = freezed,
    Object? employerName = freezed,
    Object? employerLogo = freezed,
    Object? employerWebsite = freezed,
    Object? jobPublisher = freezed,
    Object? jobEmploymentType = freezed,
    Object? jobEmploymentTypes = freezed,
    Object? jobApplyLink = freezed,
    Object? jobApplyIsDirect = freezed,
    Object? applyOptions = freezed,
    Object? jobDescription = freezed,
    Object? jobIsRemote = freezed,
    Object? jobPostedAt = freezed,
    Object? jobPostedAtTimestamp = freezed,
    Object? jobPostedAtDatetimeUtc = freezed,
    Object? jobLocation = freezed,
    Object? jobCity = freezed,
    Object? jobState = freezed,
    Object? jobCountry = freezed,
    Object? jobLatitude = freezed,
    Object? jobLongitude = freezed,
    Object? jobBenefits = freezed,
    Object? jobGoogleLink = freezed,
    Object? jobSalary = freezed,
    Object? jobMinSalary = freezed,
    Object? jobMaxSalary = freezed,
    Object? jobSalaryPeriod = freezed,
    Object? jobHighlights = freezed,
    Object? jobOnetSoc = freezed,
    Object? jobOnetJobZone = freezed,
  }) {
    return _then(_$JobDataModelImpl(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employerName: freezed == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      employerLogo: freezed == employerLogo
          ? _value.employerLogo
          : employerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      employerWebsite: freezed == employerWebsite
          ? _value.employerWebsite
          : employerWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPublisher: freezed == jobPublisher
          ? _value.jobPublisher
          : jobPublisher // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentType: freezed == jobEmploymentType
          ? _value.jobEmploymentType
          : jobEmploymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentTypes: freezed == jobEmploymentTypes
          ? _value._jobEmploymentTypes
          : jobEmploymentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jobApplyLink: freezed == jobApplyLink
          ? _value.jobApplyLink
          : jobApplyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobApplyIsDirect: freezed == jobApplyIsDirect
          ? _value.jobApplyIsDirect
          : jobApplyIsDirect // ignore: cast_nullable_to_non_nullable
              as bool?,
      applyOptions: freezed == applyOptions
          ? _value._applyOptions
          : applyOptions // ignore: cast_nullable_to_non_nullable
              as List<ApplyOption>?,
      jobDescription: freezed == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      jobIsRemote: freezed == jobIsRemote
          ? _value.jobIsRemote
          : jobIsRemote // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobPostedAt: freezed == jobPostedAt
          ? _value.jobPostedAt
          : jobPostedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPostedAtTimestamp: freezed == jobPostedAtTimestamp
          ? _value.jobPostedAtTimestamp
          : jobPostedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      jobPostedAtDatetimeUtc: freezed == jobPostedAtDatetimeUtc
          ? _value.jobPostedAtDatetimeUtc
          : jobPostedAtDatetimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jobLocation: freezed == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCity: freezed == jobCity
          ? _value.jobCity
          : jobCity // ignore: cast_nullable_to_non_nullable
              as String?,
      jobState: freezed == jobState
          ? _value.jobState
          : jobState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCountry: freezed == jobCountry
          ? _value.jobCountry
          : jobCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLatitude: freezed == jobLatitude
          ? _value.jobLatitude
          : jobLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      jobLongitude: freezed == jobLongitude
          ? _value.jobLongitude
          : jobLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      jobBenefits: freezed == jobBenefits
          ? _value._jobBenefits
          : jobBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jobGoogleLink: freezed == jobGoogleLink
          ? _value.jobGoogleLink
          : jobGoogleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobSalary: freezed == jobSalary
          ? _value.jobSalary
          : jobSalary // ignore: cast_nullable_to_non_nullable
              as double?,
      jobMinSalary: freezed == jobMinSalary
          ? _value.jobMinSalary
          : jobMinSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobMaxSalary: freezed == jobMaxSalary
          ? _value.jobMaxSalary
          : jobMaxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobSalaryPeriod: freezed == jobSalaryPeriod
          ? _value.jobSalaryPeriod
          : jobSalaryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      jobHighlights: freezed == jobHighlights
          ? _value.jobHighlights
          : jobHighlights // ignore: cast_nullable_to_non_nullable
              as JobHighlights?,
      jobOnetSoc: freezed == jobOnetSoc
          ? _value.jobOnetSoc
          : jobOnetSoc // ignore: cast_nullable_to_non_nullable
              as String?,
      jobOnetJobZone: freezed == jobOnetJobZone
          ? _value.jobOnetJobZone
          : jobOnetJobZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDataModelImpl implements _JobDataModel {
  const _$JobDataModelImpl(
      {this.jobId,
      this.jobTitle,
      this.employerName,
      this.employerLogo,
      this.employerWebsite,
      this.jobPublisher,
      this.jobEmploymentType,
      final List<String>? jobEmploymentTypes,
      this.jobApplyLink,
      this.jobApplyIsDirect,
      final List<ApplyOption>? applyOptions,
      this.jobDescription,
      this.jobIsRemote,
      this.jobPostedAt,
      this.jobPostedAtTimestamp,
      this.jobPostedAtDatetimeUtc,
      this.jobLocation,
      this.jobCity,
      this.jobState,
      this.jobCountry,
      this.jobLatitude,
      this.jobLongitude,
      final List<String>? jobBenefits,
      this.jobGoogleLink,
      this.jobSalary,
      this.jobMinSalary,
      this.jobMaxSalary,
      this.jobSalaryPeriod,
      this.jobHighlights,
      this.jobOnetSoc,
      this.jobOnetJobZone})
      : _jobEmploymentTypes = jobEmploymentTypes,
        _applyOptions = applyOptions,
        _jobBenefits = jobBenefits;

  factory _$JobDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDataModelImplFromJson(json);

  @override
  final String? jobId;
  @override
  final String? jobTitle;
  @override
  final String? employerName;
  @override
  final String? employerLogo;
  @override
  final String? employerWebsite;
  @override
  final String? jobPublisher;
  @override
  final String? jobEmploymentType;
  final List<String>? _jobEmploymentTypes;
  @override
  List<String>? get jobEmploymentTypes {
    final value = _jobEmploymentTypes;
    if (value == null) return null;
    if (_jobEmploymentTypes is EqualUnmodifiableListView)
      return _jobEmploymentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? jobApplyLink;
  @override
  final bool? jobApplyIsDirect;
  final List<ApplyOption>? _applyOptions;
  @override
  List<ApplyOption>? get applyOptions {
    final value = _applyOptions;
    if (value == null) return null;
    if (_applyOptions is EqualUnmodifiableListView) return _applyOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? jobDescription;
  @override
  final bool? jobIsRemote;
  @override
  final String? jobPostedAt;
  @override
  final int? jobPostedAtTimestamp;
  @override
  final DateTime? jobPostedAtDatetimeUtc;
  @override
  final String? jobLocation;
  @override
  final String? jobCity;
  @override
  final String? jobState;
  @override
  final String? jobCountry;
  @override
  final double? jobLatitude;
  @override
  final double? jobLongitude;
  final List<String>? _jobBenefits;
  @override
  List<String>? get jobBenefits {
    final value = _jobBenefits;
    if (value == null) return null;
    if (_jobBenefits is EqualUnmodifiableListView) return _jobBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? jobGoogleLink;
  @override
  final double? jobSalary;
  @override
  final int? jobMinSalary;
  @override
  final int? jobMaxSalary;
  @override
  final String? jobSalaryPeriod;
  @override
  final JobHighlights? jobHighlights;
  @override
  final String? jobOnetSoc;
  @override
  final String? jobOnetJobZone;

  @override
  String toString() {
    return 'JobDataModel(jobId: $jobId, jobTitle: $jobTitle, employerName: $employerName, employerLogo: $employerLogo, employerWebsite: $employerWebsite, jobPublisher: $jobPublisher, jobEmploymentType: $jobEmploymentType, jobEmploymentTypes: $jobEmploymentTypes, jobApplyLink: $jobApplyLink, jobApplyIsDirect: $jobApplyIsDirect, applyOptions: $applyOptions, jobDescription: $jobDescription, jobIsRemote: $jobIsRemote, jobPostedAt: $jobPostedAt, jobPostedAtTimestamp: $jobPostedAtTimestamp, jobPostedAtDatetimeUtc: $jobPostedAtDatetimeUtc, jobLocation: $jobLocation, jobCity: $jobCity, jobState: $jobState, jobCountry: $jobCountry, jobLatitude: $jobLatitude, jobLongitude: $jobLongitude, jobBenefits: $jobBenefits, jobGoogleLink: $jobGoogleLink, jobSalary: $jobSalary, jobMinSalary: $jobMinSalary, jobMaxSalary: $jobMaxSalary, jobSalaryPeriod: $jobSalaryPeriod, jobHighlights: $jobHighlights, jobOnetSoc: $jobOnetSoc, jobOnetJobZone: $jobOnetJobZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDataModelImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.employerName, employerName) ||
                other.employerName == employerName) &&
            (identical(other.employerLogo, employerLogo) ||
                other.employerLogo == employerLogo) &&
            (identical(other.employerWebsite, employerWebsite) ||
                other.employerWebsite == employerWebsite) &&
            (identical(other.jobPublisher, jobPublisher) ||
                other.jobPublisher == jobPublisher) &&
            (identical(other.jobEmploymentType, jobEmploymentType) ||
                other.jobEmploymentType == jobEmploymentType) &&
            const DeepCollectionEquality()
                .equals(other._jobEmploymentTypes, _jobEmploymentTypes) &&
            (identical(other.jobApplyLink, jobApplyLink) ||
                other.jobApplyLink == jobApplyLink) &&
            (identical(other.jobApplyIsDirect, jobApplyIsDirect) ||
                other.jobApplyIsDirect == jobApplyIsDirect) &&
            const DeepCollectionEquality()
                .equals(other._applyOptions, _applyOptions) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.jobIsRemote, jobIsRemote) ||
                other.jobIsRemote == jobIsRemote) &&
            (identical(other.jobPostedAt, jobPostedAt) ||
                other.jobPostedAt == jobPostedAt) &&
            (identical(other.jobPostedAtTimestamp, jobPostedAtTimestamp) ||
                other.jobPostedAtTimestamp == jobPostedAtTimestamp) &&
            (identical(other.jobPostedAtDatetimeUtc, jobPostedAtDatetimeUtc) ||
                other.jobPostedAtDatetimeUtc == jobPostedAtDatetimeUtc) &&
            (identical(other.jobLocation, jobLocation) ||
                other.jobLocation == jobLocation) &&
            (identical(other.jobCity, jobCity) || other.jobCity == jobCity) &&
            (identical(other.jobState, jobState) ||
                other.jobState == jobState) &&
            (identical(other.jobCountry, jobCountry) ||
                other.jobCountry == jobCountry) &&
            (identical(other.jobLatitude, jobLatitude) ||
                other.jobLatitude == jobLatitude) &&
            (identical(other.jobLongitude, jobLongitude) ||
                other.jobLongitude == jobLongitude) &&
            const DeepCollectionEquality()
                .equals(other._jobBenefits, _jobBenefits) &&
            (identical(other.jobGoogleLink, jobGoogleLink) ||
                other.jobGoogleLink == jobGoogleLink) &&
            (identical(other.jobSalary, jobSalary) ||
                other.jobSalary == jobSalary) &&
            (identical(other.jobMinSalary, jobMinSalary) ||
                other.jobMinSalary == jobMinSalary) &&
            (identical(other.jobMaxSalary, jobMaxSalary) ||
                other.jobMaxSalary == jobMaxSalary) &&
            (identical(other.jobSalaryPeriod, jobSalaryPeriod) ||
                other.jobSalaryPeriod == jobSalaryPeriod) &&
            (identical(other.jobHighlights, jobHighlights) ||
                other.jobHighlights == jobHighlights) &&
            (identical(other.jobOnetSoc, jobOnetSoc) ||
                other.jobOnetSoc == jobOnetSoc) &&
            (identical(other.jobOnetJobZone, jobOnetJobZone) ||
                other.jobOnetJobZone == jobOnetJobZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        jobId,
        jobTitle,
        employerName,
        employerLogo,
        employerWebsite,
        jobPublisher,
        jobEmploymentType,
        const DeepCollectionEquality().hash(_jobEmploymentTypes),
        jobApplyLink,
        jobApplyIsDirect,
        const DeepCollectionEquality().hash(_applyOptions),
        jobDescription,
        jobIsRemote,
        jobPostedAt,
        jobPostedAtTimestamp,
        jobPostedAtDatetimeUtc,
        jobLocation,
        jobCity,
        jobState,
        jobCountry,
        jobLatitude,
        jobLongitude,
        const DeepCollectionEquality().hash(_jobBenefits),
        jobGoogleLink,
        jobSalary,
        jobMinSalary,
        jobMaxSalary,
        jobSalaryPeriod,
        jobHighlights,
        jobOnetSoc,
        jobOnetJobZone
      ]);

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDataModelImplCopyWith<_$JobDataModelImpl> get copyWith =>
      __$$JobDataModelImplCopyWithImpl<_$JobDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDataModelImplToJson(
      this,
    );
  }
}

abstract class _JobDataModel implements JobDataModel {
  const factory _JobDataModel(
      {final String? jobId,
      final String? jobTitle,
      final String? employerName,
      final String? employerLogo,
      final String? employerWebsite,
      final String? jobPublisher,
      final String? jobEmploymentType,
      final List<String>? jobEmploymentTypes,
      final String? jobApplyLink,
      final bool? jobApplyIsDirect,
      final List<ApplyOption>? applyOptions,
      final String? jobDescription,
      final bool? jobIsRemote,
      final String? jobPostedAt,
      final int? jobPostedAtTimestamp,
      final DateTime? jobPostedAtDatetimeUtc,
      final String? jobLocation,
      final String? jobCity,
      final String? jobState,
      final String? jobCountry,
      final double? jobLatitude,
      final double? jobLongitude,
      final List<String>? jobBenefits,
      final String? jobGoogleLink,
      final double? jobSalary,
      final int? jobMinSalary,
      final int? jobMaxSalary,
      final String? jobSalaryPeriod,
      final JobHighlights? jobHighlights,
      final String? jobOnetSoc,
      final String? jobOnetJobZone}) = _$JobDataModelImpl;

  factory _JobDataModel.fromJson(Map<String, dynamic> json) =
      _$JobDataModelImpl.fromJson;

  @override
  String? get jobId;
  @override
  String? get jobTitle;
  @override
  String? get employerName;
  @override
  String? get employerLogo;
  @override
  String? get employerWebsite;
  @override
  String? get jobPublisher;
  @override
  String? get jobEmploymentType;
  @override
  List<String>? get jobEmploymentTypes;
  @override
  String? get jobApplyLink;
  @override
  bool? get jobApplyIsDirect;
  @override
  List<ApplyOption>? get applyOptions;
  @override
  String? get jobDescription;
  @override
  bool? get jobIsRemote;
  @override
  String? get jobPostedAt;
  @override
  int? get jobPostedAtTimestamp;
  @override
  DateTime? get jobPostedAtDatetimeUtc;
  @override
  String? get jobLocation;
  @override
  String? get jobCity;
  @override
  String? get jobState;
  @override
  String? get jobCountry;
  @override
  double? get jobLatitude;
  @override
  double? get jobLongitude;
  @override
  List<String>? get jobBenefits;
  @override
  String? get jobGoogleLink;
  @override
  double? get jobSalary;
  @override
  int? get jobMinSalary;
  @override
  int? get jobMaxSalary;
  @override
  String? get jobSalaryPeriod;
  @override
  JobHighlights? get jobHighlights;
  @override
  String? get jobOnetSoc;
  @override
  String? get jobOnetJobZone;

  /// Create a copy of JobDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDataModelImplCopyWith<_$JobDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
