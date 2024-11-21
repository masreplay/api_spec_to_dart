// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_registration_school_info_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentRegistrationSchoolInfoUpdateRequest
    _$StudentRegistrationSchoolInfoUpdateRequestFromJson(
        Map<String, dynamic> json) {
  return _StudentRegistrationSchoolInfoUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentRegistrationSchoolInfoUpdateRequest {
  /// School Name
  @JsonKey(name: 'school_name')
  String? get schoolName => throw _privateConstructorUsedError;

  /// Exam Number
  @JsonKey(name: 'exam_number')
  String get examNumber => throw _privateConstructorUsedError;

  /// Study Year Id
  @JsonKey(name: 'study_year_id')
  int? get studyYearId => throw _privateConstructorUsedError;

  /// Directorate Name
  @JsonKey(name: 'directorate_name')
  String? get directorateName => throw _privateConstructorUsedError;

  /// Average
  @JsonKey(name: 'average')
  num? get average => throw _privateConstructorUsedError;

  /// Total
  @JsonKey(name: 'total')
  num? get total => throw _privateConstructorUsedError;

  /// Round
  @JsonKey(name: 'round')
  int? get round => throw _privateConstructorUsedError;

  /// Number Of Failure Years
  @JsonKey(name: 'number_of_failure_years')
  int? get numberOfFailureYears => throw _privateConstructorUsedError;

  /// Governorate Id
  @JsonKey(name: 'governorate_id')
  int? get governorateId => throw _privateConstructorUsedError;

  /// Specialization Id
  @JsonKey(name: 'specialization_id')
  int? get specializationId => throw _privateConstructorUsedError;

  /// Serializes this StudentRegistrationSchoolInfoUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentRegistrationSchoolInfoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentRegistrationSchoolInfoUpdateRequestCopyWith<
          StudentRegistrationSchoolInfoUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentRegistrationSchoolInfoUpdateRequestCopyWith<$Res> {
  factory $StudentRegistrationSchoolInfoUpdateRequestCopyWith(
          StudentRegistrationSchoolInfoUpdateRequest value,
          $Res Function(StudentRegistrationSchoolInfoUpdateRequest) then) =
      _$StudentRegistrationSchoolInfoUpdateRequestCopyWithImpl<$Res,
          StudentRegistrationSchoolInfoUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'exam_number') String examNumber,
      @JsonKey(name: 'study_year_id') int? studyYearId,
      @JsonKey(name: 'directorate_name') String? directorateName,
      @JsonKey(name: 'average') num? average,
      @JsonKey(name: 'total') num? total,
      @JsonKey(name: 'round') int? round,
      @JsonKey(name: 'number_of_failure_years') int? numberOfFailureYears,
      @JsonKey(name: 'governorate_id') int? governorateId,
      @JsonKey(name: 'specialization_id') int? specializationId});
}

/// @nodoc
class _$StudentRegistrationSchoolInfoUpdateRequestCopyWithImpl<$Res,
        $Val extends StudentRegistrationSchoolInfoUpdateRequest>
    implements $StudentRegistrationSchoolInfoUpdateRequestCopyWith<$Res> {
  _$StudentRegistrationSchoolInfoUpdateRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentRegistrationSchoolInfoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? examNumber = null,
    Object? studyYearId = freezed,
    Object? directorateName = freezed,
    Object? average = freezed,
    Object? total = freezed,
    Object? round = freezed,
    Object? numberOfFailureYears = freezed,
    Object? governorateId = freezed,
    Object? specializationId = freezed,
  }) {
    return _then(_value.copyWith(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examNumber: null == examNumber
          ? _value.examNumber
          : examNumber // ignore: cast_nullable_to_non_nullable
              as String,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      directorateName: freezed == directorateName
          ? _value.directorateName
          : directorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfFailureYears: freezed == numberOfFailureYears
          ? _value.numberOfFailureYears
          : numberOfFailureYears // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWith<$Res>
    implements $StudentRegistrationSchoolInfoUpdateRequestCopyWith<$Res> {
  factory _$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWith(
          _$StudentRegistrationSchoolInfoUpdateRequestImpl value,
          $Res Function(_$StudentRegistrationSchoolInfoUpdateRequestImpl)
              then) =
      __$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'exam_number') String examNumber,
      @JsonKey(name: 'study_year_id') int? studyYearId,
      @JsonKey(name: 'directorate_name') String? directorateName,
      @JsonKey(name: 'average') num? average,
      @JsonKey(name: 'total') num? total,
      @JsonKey(name: 'round') int? round,
      @JsonKey(name: 'number_of_failure_years') int? numberOfFailureYears,
      @JsonKey(name: 'governorate_id') int? governorateId,
      @JsonKey(name: 'specialization_id') int? specializationId});
}

/// @nodoc
class __$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWithImpl<$Res>
    extends _$StudentRegistrationSchoolInfoUpdateRequestCopyWithImpl<$Res,
        _$StudentRegistrationSchoolInfoUpdateRequestImpl>
    implements _$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWith<$Res> {
  __$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWithImpl(
      _$StudentRegistrationSchoolInfoUpdateRequestImpl _value,
      $Res Function(_$StudentRegistrationSchoolInfoUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentRegistrationSchoolInfoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? examNumber = null,
    Object? studyYearId = freezed,
    Object? directorateName = freezed,
    Object? average = freezed,
    Object? total = freezed,
    Object? round = freezed,
    Object? numberOfFailureYears = freezed,
    Object? governorateId = freezed,
    Object? specializationId = freezed,
  }) {
    return _then(_$StudentRegistrationSchoolInfoUpdateRequestImpl(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examNumber: null == examNumber
          ? _value.examNumber
          : examNumber // ignore: cast_nullable_to_non_nullable
              as String,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      directorateName: freezed == directorateName
          ? _value.directorateName
          : directorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfFailureYears: freezed == numberOfFailureYears
          ? _value.numberOfFailureYears
          : numberOfFailureYears // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentRegistrationSchoolInfoUpdateRequestImpl
    extends _StudentRegistrationSchoolInfoUpdateRequest {
  const _$StudentRegistrationSchoolInfoUpdateRequestImpl(
      {@JsonKey(name: 'school_name') required this.schoolName,
      @JsonKey(name: 'exam_number') required this.examNumber,
      @JsonKey(name: 'study_year_id') required this.studyYearId,
      @JsonKey(name: 'directorate_name') required this.directorateName,
      @JsonKey(name: 'average') required this.average,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'round') required this.round,
      @JsonKey(name: 'number_of_failure_years')
      required this.numberOfFailureYears,
      @JsonKey(name: 'governorate_id') required this.governorateId,
      @JsonKey(name: 'specialization_id') required this.specializationId})
      : super._();

  factory _$StudentRegistrationSchoolInfoUpdateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentRegistrationSchoolInfoUpdateRequestImplFromJson(json);

  /// School Name
  @override
  @JsonKey(name: 'school_name')
  final String? schoolName;

  /// Exam Number
  @override
  @JsonKey(name: 'exam_number')
  final String examNumber;

  /// Study Year Id
  @override
  @JsonKey(name: 'study_year_id')
  final int? studyYearId;

  /// Directorate Name
  @override
  @JsonKey(name: 'directorate_name')
  final String? directorateName;

  /// Average
  @override
  @JsonKey(name: 'average')
  final num? average;

  /// Total
  @override
  @JsonKey(name: 'total')
  final num? total;

  /// Round
  @override
  @JsonKey(name: 'round')
  final int? round;

  /// Number Of Failure Years
  @override
  @JsonKey(name: 'number_of_failure_years')
  final int? numberOfFailureYears;

  /// Governorate Id
  @override
  @JsonKey(name: 'governorate_id')
  final int? governorateId;

  /// Specialization Id
  @override
  @JsonKey(name: 'specialization_id')
  final int? specializationId;

  @override
  String toString() {
    return 'StudentRegistrationSchoolInfoUpdateRequest(schoolName: $schoolName, examNumber: $examNumber, studyYearId: $studyYearId, directorateName: $directorateName, average: $average, total: $total, round: $round, numberOfFailureYears: $numberOfFailureYears, governorateId: $governorateId, specializationId: $specializationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentRegistrationSchoolInfoUpdateRequestImpl &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.examNumber, examNumber) ||
                other.examNumber == examNumber) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.directorateName, directorateName) ||
                other.directorateName == directorateName) &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.numberOfFailureYears, numberOfFailureYears) ||
                other.numberOfFailureYears == numberOfFailureYears) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.specializationId, specializationId) ||
                other.specializationId == specializationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolName,
      examNumber,
      studyYearId,
      directorateName,
      average,
      total,
      round,
      numberOfFailureYears,
      governorateId,
      specializationId);

  /// Create a copy of StudentRegistrationSchoolInfoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWith<
          _$StudentRegistrationSchoolInfoUpdateRequestImpl>
      get copyWith =>
          __$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWithImpl<
                  _$StudentRegistrationSchoolInfoUpdateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentRegistrationSchoolInfoUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentRegistrationSchoolInfoUpdateRequest
    extends StudentRegistrationSchoolInfoUpdateRequest {
  const factory _StudentRegistrationSchoolInfoUpdateRequest(
      {@JsonKey(name: 'school_name') required final String? schoolName,
      @JsonKey(name: 'exam_number') required final String examNumber,
      @JsonKey(name: 'study_year_id') required final int? studyYearId,
      @JsonKey(name: 'directorate_name') required final String? directorateName,
      @JsonKey(name: 'average') required final num? average,
      @JsonKey(name: 'total') required final num? total,
      @JsonKey(name: 'round') required final int? round,
      @JsonKey(name: 'number_of_failure_years')
      required final int? numberOfFailureYears,
      @JsonKey(name: 'governorate_id') required final int? governorateId,
      @JsonKey(name: 'specialization_id')
      required final int?
          specializationId}) = _$StudentRegistrationSchoolInfoUpdateRequestImpl;
  const _StudentRegistrationSchoolInfoUpdateRequest._() : super._();

  factory _StudentRegistrationSchoolInfoUpdateRequest.fromJson(
          Map<String, dynamic> json) =
      _$StudentRegistrationSchoolInfoUpdateRequestImpl.fromJson;

  /// School Name
  @override
  @JsonKey(name: 'school_name')
  String? get schoolName;

  /// Exam Number
  @override
  @JsonKey(name: 'exam_number')
  String get examNumber;

  /// Study Year Id
  @override
  @JsonKey(name: 'study_year_id')
  int? get studyYearId;

  /// Directorate Name
  @override
  @JsonKey(name: 'directorate_name')
  String? get directorateName;

  /// Average
  @override
  @JsonKey(name: 'average')
  num? get average;

  /// Total
  @override
  @JsonKey(name: 'total')
  num? get total;

  /// Round
  @override
  @JsonKey(name: 'round')
  int? get round;

  /// Number Of Failure Years
  @override
  @JsonKey(name: 'number_of_failure_years')
  int? get numberOfFailureYears;

  /// Governorate Id
  @override
  @JsonKey(name: 'governorate_id')
  int? get governorateId;

  /// Specialization Id
  @override
  @JsonKey(name: 'specialization_id')
  int? get specializationId;

  /// Create a copy of StudentRegistrationSchoolInfoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentRegistrationSchoolInfoUpdateRequestImplCopyWith<
          _$StudentRegistrationSchoolInfoUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
