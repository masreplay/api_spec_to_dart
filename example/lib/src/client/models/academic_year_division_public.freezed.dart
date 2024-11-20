// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year_division_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcademicYearDivisionPublic _$AcademicYearDivisionPublicFromJson(
    Map<String, dynamic> json) {
  return _AcademicYearDivisionPublic.fromJson(json);
}

/// @nodoc
mixin _$AcademicYearDivisionPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'academic_learning_framework_system_id')
  int get academicLearningFrameworkSystemId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'enrolment_start_date')
  DateTime get enrolmentStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrolment_end_date')
  DateTime get enrolmentEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester_start_date')
  DateTime get semesterStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester_end_date')
  DateTime get semesterEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester_time_period')
  int get semesterTimePeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_type')
  int get periodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_gpa_for_success')
  num get minimumGpaForSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_course_passing_grade')
  int get minimumCoursePassingGrade => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_number_of_courses_to_pass')
  int get minimumNumberOfCoursesToPass => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_number_of_courses_to_fail')
  int get minimumNumberOfCoursesToFail => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_ects')
  num get minimumEcts => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_ects')
  num get maximumEcts => throw _privateConstructorUsedError;

  /// Serializes this AcademicYearDivisionPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcademicYearDivisionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicYearDivisionPublicCopyWith<AcademicYearDivisionPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicYearDivisionPublicCopyWith<$Res> {
  factory $AcademicYearDivisionPublicCopyWith(AcademicYearDivisionPublic value,
          $Res Function(AcademicYearDivisionPublic) then) =
      _$AcademicYearDivisionPublicCopyWithImpl<$Res,
          AcademicYearDivisionPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'academic_learning_framework_system_id')
      int academicLearningFrameworkSystemId,
      @JsonKey(name: 'enrolment_start_date') DateTime enrolmentStartDate,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'enrolment_end_date') DateTime enrolmentEndDate,
      @JsonKey(name: 'semester_start_date') DateTime semesterStartDate,
      @JsonKey(name: 'semester_end_date') DateTime semesterEndDate,
      @JsonKey(name: 'semester_time_period') int semesterTimePeriod,
      @JsonKey(name: 'period_type') int periodType,
      @JsonKey(name: 'minimum_gpa_for_success') num minimumGpaForSuccess,
      @JsonKey(name: 'minimum_course_passing_grade')
      int minimumCoursePassingGrade,
      @JsonKey(name: 'minimum_number_of_courses_to_pass')
      int minimumNumberOfCoursesToPass,
      @JsonKey(name: 'minimum_number_of_courses_to_fail')
      int minimumNumberOfCoursesToFail,
      @JsonKey(name: 'minimum_ects') num minimumEcts,
      @JsonKey(name: 'maximum_ects') num maximumEcts});
}

/// @nodoc
class _$AcademicYearDivisionPublicCopyWithImpl<$Res,
        $Val extends AcademicYearDivisionPublic>
    implements $AcademicYearDivisionPublicCopyWith<$Res> {
  _$AcademicYearDivisionPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcademicYearDivisionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? academicLearningFrameworkSystemId = null,
    Object? enrolmentStartDate = null,
    Object? name = null,
    Object? enrolmentEndDate = null,
    Object? semesterStartDate = null,
    Object? semesterEndDate = null,
    Object? semesterTimePeriod = null,
    Object? periodType = null,
    Object? minimumGpaForSuccess = null,
    Object? minimumCoursePassingGrade = null,
    Object? minimumNumberOfCoursesToPass = null,
    Object? minimumNumberOfCoursesToFail = null,
    Object? minimumEcts = null,
    Object? maximumEcts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      academicLearningFrameworkSystemId: null ==
              academicLearningFrameworkSystemId
          ? _value.academicLearningFrameworkSystemId
          : academicLearningFrameworkSystemId // ignore: cast_nullable_to_non_nullable
              as int,
      enrolmentStartDate: null == enrolmentStartDate
          ? _value.enrolmentStartDate
          : enrolmentStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enrolmentEndDate: null == enrolmentEndDate
          ? _value.enrolmentEndDate
          : enrolmentEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterStartDate: null == semesterStartDate
          ? _value.semesterStartDate
          : semesterStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterEndDate: null == semesterEndDate
          ? _value.semesterEndDate
          : semesterEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterTimePeriod: null == semesterTimePeriod
          ? _value.semesterTimePeriod
          : semesterTimePeriod // ignore: cast_nullable_to_non_nullable
              as int,
      periodType: null == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as int,
      minimumGpaForSuccess: null == minimumGpaForSuccess
          ? _value.minimumGpaForSuccess
          : minimumGpaForSuccess // ignore: cast_nullable_to_non_nullable
              as num,
      minimumCoursePassingGrade: null == minimumCoursePassingGrade
          ? _value.minimumCoursePassingGrade
          : minimumCoursePassingGrade // ignore: cast_nullable_to_non_nullable
              as int,
      minimumNumberOfCoursesToPass: null == minimumNumberOfCoursesToPass
          ? _value.minimumNumberOfCoursesToPass
          : minimumNumberOfCoursesToPass // ignore: cast_nullable_to_non_nullable
              as int,
      minimumNumberOfCoursesToFail: null == minimumNumberOfCoursesToFail
          ? _value.minimumNumberOfCoursesToFail
          : minimumNumberOfCoursesToFail // ignore: cast_nullable_to_non_nullable
              as int,
      minimumEcts: null == minimumEcts
          ? _value.minimumEcts
          : minimumEcts // ignore: cast_nullable_to_non_nullable
              as num,
      maximumEcts: null == maximumEcts
          ? _value.maximumEcts
          : maximumEcts // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicYearDivisionPublicImplCopyWith<$Res>
    implements $AcademicYearDivisionPublicCopyWith<$Res> {
  factory _$$AcademicYearDivisionPublicImplCopyWith(
          _$AcademicYearDivisionPublicImpl value,
          $Res Function(_$AcademicYearDivisionPublicImpl) then) =
      __$$AcademicYearDivisionPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'academic_learning_framework_system_id')
      int academicLearningFrameworkSystemId,
      @JsonKey(name: 'enrolment_start_date') DateTime enrolmentStartDate,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'enrolment_end_date') DateTime enrolmentEndDate,
      @JsonKey(name: 'semester_start_date') DateTime semesterStartDate,
      @JsonKey(name: 'semester_end_date') DateTime semesterEndDate,
      @JsonKey(name: 'semester_time_period') int semesterTimePeriod,
      @JsonKey(name: 'period_type') int periodType,
      @JsonKey(name: 'minimum_gpa_for_success') num minimumGpaForSuccess,
      @JsonKey(name: 'minimum_course_passing_grade')
      int minimumCoursePassingGrade,
      @JsonKey(name: 'minimum_number_of_courses_to_pass')
      int minimumNumberOfCoursesToPass,
      @JsonKey(name: 'minimum_number_of_courses_to_fail')
      int minimumNumberOfCoursesToFail,
      @JsonKey(name: 'minimum_ects') num minimumEcts,
      @JsonKey(name: 'maximum_ects') num maximumEcts});
}

/// @nodoc
class __$$AcademicYearDivisionPublicImplCopyWithImpl<$Res>
    extends _$AcademicYearDivisionPublicCopyWithImpl<$Res,
        _$AcademicYearDivisionPublicImpl>
    implements _$$AcademicYearDivisionPublicImplCopyWith<$Res> {
  __$$AcademicYearDivisionPublicImplCopyWithImpl(
      _$AcademicYearDivisionPublicImpl _value,
      $Res Function(_$AcademicYearDivisionPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcademicYearDivisionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? academicLearningFrameworkSystemId = null,
    Object? enrolmentStartDate = null,
    Object? name = null,
    Object? enrolmentEndDate = null,
    Object? semesterStartDate = null,
    Object? semesterEndDate = null,
    Object? semesterTimePeriod = null,
    Object? periodType = null,
    Object? minimumGpaForSuccess = null,
    Object? minimumCoursePassingGrade = null,
    Object? minimumNumberOfCoursesToPass = null,
    Object? minimumNumberOfCoursesToFail = null,
    Object? minimumEcts = null,
    Object? maximumEcts = null,
  }) {
    return _then(_$AcademicYearDivisionPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      academicLearningFrameworkSystemId: null ==
              academicLearningFrameworkSystemId
          ? _value.academicLearningFrameworkSystemId
          : academicLearningFrameworkSystemId // ignore: cast_nullable_to_non_nullable
              as int,
      enrolmentStartDate: null == enrolmentStartDate
          ? _value.enrolmentStartDate
          : enrolmentStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enrolmentEndDate: null == enrolmentEndDate
          ? _value.enrolmentEndDate
          : enrolmentEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterStartDate: null == semesterStartDate
          ? _value.semesterStartDate
          : semesterStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterEndDate: null == semesterEndDate
          ? _value.semesterEndDate
          : semesterEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      semesterTimePeriod: null == semesterTimePeriod
          ? _value.semesterTimePeriod
          : semesterTimePeriod // ignore: cast_nullable_to_non_nullable
              as int,
      periodType: null == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as int,
      minimumGpaForSuccess: null == minimumGpaForSuccess
          ? _value.minimumGpaForSuccess
          : minimumGpaForSuccess // ignore: cast_nullable_to_non_nullable
              as num,
      minimumCoursePassingGrade: null == minimumCoursePassingGrade
          ? _value.minimumCoursePassingGrade
          : minimumCoursePassingGrade // ignore: cast_nullable_to_non_nullable
              as int,
      minimumNumberOfCoursesToPass: null == minimumNumberOfCoursesToPass
          ? _value.minimumNumberOfCoursesToPass
          : minimumNumberOfCoursesToPass // ignore: cast_nullable_to_non_nullable
              as int,
      minimumNumberOfCoursesToFail: null == minimumNumberOfCoursesToFail
          ? _value.minimumNumberOfCoursesToFail
          : minimumNumberOfCoursesToFail // ignore: cast_nullable_to_non_nullable
              as int,
      minimumEcts: null == minimumEcts
          ? _value.minimumEcts
          : minimumEcts // ignore: cast_nullable_to_non_nullable
              as num,
      maximumEcts: null == maximumEcts
          ? _value.maximumEcts
          : maximumEcts // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicYearDivisionPublicImpl implements _AcademicYearDivisionPublic {
  const _$AcademicYearDivisionPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'academic_learning_framework_system_id')
      required this.academicLearningFrameworkSystemId,
      @JsonKey(name: 'enrolment_start_date') required this.enrolmentStartDate,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'enrolment_end_date') required this.enrolmentEndDate,
      @JsonKey(name: 'semester_start_date') required this.semesterStartDate,
      @JsonKey(name: 'semester_end_date') required this.semesterEndDate,
      @JsonKey(name: 'semester_time_period') required this.semesterTimePeriod,
      @JsonKey(name: 'period_type') required this.periodType,
      @JsonKey(name: 'minimum_gpa_for_success')
      required this.minimumGpaForSuccess,
      @JsonKey(name: 'minimum_course_passing_grade')
      required this.minimumCoursePassingGrade,
      @JsonKey(name: 'minimum_number_of_courses_to_pass')
      required this.minimumNumberOfCoursesToPass,
      @JsonKey(name: 'minimum_number_of_courses_to_fail')
      required this.minimumNumberOfCoursesToFail,
      @JsonKey(name: 'minimum_ects') required this.minimumEcts,
      @JsonKey(name: 'maximum_ects') required this.maximumEcts});

  factory _$AcademicYearDivisionPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcademicYearDivisionPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'academic_learning_framework_system_id')
  final int academicLearningFrameworkSystemId;
  @override
  @JsonKey(name: 'enrolment_start_date')
  final DateTime enrolmentStartDate;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'enrolment_end_date')
  final DateTime enrolmentEndDate;
  @override
  @JsonKey(name: 'semester_start_date')
  final DateTime semesterStartDate;
  @override
  @JsonKey(name: 'semester_end_date')
  final DateTime semesterEndDate;
  @override
  @JsonKey(name: 'semester_time_period')
  final int semesterTimePeriod;
  @override
  @JsonKey(name: 'period_type')
  final int periodType;
  @override
  @JsonKey(name: 'minimum_gpa_for_success')
  final num minimumGpaForSuccess;
  @override
  @JsonKey(name: 'minimum_course_passing_grade')
  final int minimumCoursePassingGrade;
  @override
  @JsonKey(name: 'minimum_number_of_courses_to_pass')
  final int minimumNumberOfCoursesToPass;
  @override
  @JsonKey(name: 'minimum_number_of_courses_to_fail')
  final int minimumNumberOfCoursesToFail;
  @override
  @JsonKey(name: 'minimum_ects')
  final num minimumEcts;
  @override
  @JsonKey(name: 'maximum_ects')
  final num maximumEcts;

  @override
  String toString() {
    return 'AcademicYearDivisionPublic(id: $id, academicLearningFrameworkSystemId: $academicLearningFrameworkSystemId, enrolmentStartDate: $enrolmentStartDate, name: $name, enrolmentEndDate: $enrolmentEndDate, semesterStartDate: $semesterStartDate, semesterEndDate: $semesterEndDate, semesterTimePeriod: $semesterTimePeriod, periodType: $periodType, minimumGpaForSuccess: $minimumGpaForSuccess, minimumCoursePassingGrade: $minimumCoursePassingGrade, minimumNumberOfCoursesToPass: $minimumNumberOfCoursesToPass, minimumNumberOfCoursesToFail: $minimumNumberOfCoursesToFail, minimumEcts: $minimumEcts, maximumEcts: $maximumEcts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicYearDivisionPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.academicLearningFrameworkSystemId,
                    academicLearningFrameworkSystemId) ||
                other.academicLearningFrameworkSystemId ==
                    academicLearningFrameworkSystemId) &&
            (identical(other.enrolmentStartDate, enrolmentStartDate) ||
                other.enrolmentStartDate == enrolmentStartDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enrolmentEndDate, enrolmentEndDate) ||
                other.enrolmentEndDate == enrolmentEndDate) &&
            (identical(other.semesterStartDate, semesterStartDate) ||
                other.semesterStartDate == semesterStartDate) &&
            (identical(other.semesterEndDate, semesterEndDate) ||
                other.semesterEndDate == semesterEndDate) &&
            (identical(other.semesterTimePeriod, semesterTimePeriod) ||
                other.semesterTimePeriod == semesterTimePeriod) &&
            (identical(other.periodType, periodType) ||
                other.periodType == periodType) &&
            (identical(other.minimumGpaForSuccess, minimumGpaForSuccess) ||
                other.minimumGpaForSuccess == minimumGpaForSuccess) &&
            (identical(other.minimumCoursePassingGrade,
                    minimumCoursePassingGrade) ||
                other.minimumCoursePassingGrade == minimumCoursePassingGrade) &&
            (identical(other.minimumNumberOfCoursesToPass,
                    minimumNumberOfCoursesToPass) ||
                other.minimumNumberOfCoursesToPass ==
                    minimumNumberOfCoursesToPass) &&
            (identical(other.minimumNumberOfCoursesToFail,
                    minimumNumberOfCoursesToFail) ||
                other.minimumNumberOfCoursesToFail ==
                    minimumNumberOfCoursesToFail) &&
            (identical(other.minimumEcts, minimumEcts) ||
                other.minimumEcts == minimumEcts) &&
            (identical(other.maximumEcts, maximumEcts) ||
                other.maximumEcts == maximumEcts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      academicLearningFrameworkSystemId,
      enrolmentStartDate,
      name,
      enrolmentEndDate,
      semesterStartDate,
      semesterEndDate,
      semesterTimePeriod,
      periodType,
      minimumGpaForSuccess,
      minimumCoursePassingGrade,
      minimumNumberOfCoursesToPass,
      minimumNumberOfCoursesToFail,
      minimumEcts,
      maximumEcts);

  /// Create a copy of AcademicYearDivisionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicYearDivisionPublicImplCopyWith<_$AcademicYearDivisionPublicImpl>
      get copyWith => __$$AcademicYearDivisionPublicImplCopyWithImpl<
          _$AcademicYearDivisionPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicYearDivisionPublicImplToJson(
      this,
    );
  }
}

abstract class _AcademicYearDivisionPublic
    implements AcademicYearDivisionPublic {
  const factory _AcademicYearDivisionPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'academic_learning_framework_system_id')
          required final int academicLearningFrameworkSystemId,
          @JsonKey(name: 'enrolment_start_date')
          required final DateTime enrolmentStartDate,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'enrolment_end_date')
          required final DateTime enrolmentEndDate,
          @JsonKey(name: 'semester_start_date')
          required final DateTime semesterStartDate,
          @JsonKey(name: 'semester_end_date')
          required final DateTime semesterEndDate,
          @JsonKey(name: 'semester_time_period')
          required final int semesterTimePeriod,
          @JsonKey(name: 'period_type') required final int periodType,
          @JsonKey(name: 'minimum_gpa_for_success')
          required final num minimumGpaForSuccess,
          @JsonKey(name: 'minimum_course_passing_grade')
          required final int minimumCoursePassingGrade,
          @JsonKey(name: 'minimum_number_of_courses_to_pass')
          required final int minimumNumberOfCoursesToPass,
          @JsonKey(name: 'minimum_number_of_courses_to_fail')
          required final int minimumNumberOfCoursesToFail,
          @JsonKey(name: 'minimum_ects') required final num minimumEcts,
          @JsonKey(name: 'maximum_ects') required final num maximumEcts}) =
      _$AcademicYearDivisionPublicImpl;

  factory _AcademicYearDivisionPublic.fromJson(Map<String, dynamic> json) =
      _$AcademicYearDivisionPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'academic_learning_framework_system_id')
  int get academicLearningFrameworkSystemId;
  @override
  @JsonKey(name: 'enrolment_start_date')
  DateTime get enrolmentStartDate;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'enrolment_end_date')
  DateTime get enrolmentEndDate;
  @override
  @JsonKey(name: 'semester_start_date')
  DateTime get semesterStartDate;
  @override
  @JsonKey(name: 'semester_end_date')
  DateTime get semesterEndDate;
  @override
  @JsonKey(name: 'semester_time_period')
  int get semesterTimePeriod;
  @override
  @JsonKey(name: 'period_type')
  int get periodType;
  @override
  @JsonKey(name: 'minimum_gpa_for_success')
  num get minimumGpaForSuccess;
  @override
  @JsonKey(name: 'minimum_course_passing_grade')
  int get minimumCoursePassingGrade;
  @override
  @JsonKey(name: 'minimum_number_of_courses_to_pass')
  int get minimumNumberOfCoursesToPass;
  @override
  @JsonKey(name: 'minimum_number_of_courses_to_fail')
  int get minimumNumberOfCoursesToFail;
  @override
  @JsonKey(name: 'minimum_ects')
  num get minimumEcts;
  @override
  @JsonKey(name: 'maximum_ects')
  num get maximumEcts;

  /// Create a copy of AcademicYearDivisionPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicYearDivisionPublicImplCopyWith<_$AcademicYearDivisionPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
