// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_selected_courses_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSelectedCoursesPublic _$StudentSelectedCoursesPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentSelectedCoursesPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentSelectedCoursesPublic {
  /// Student Id
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;

  /// Final Grade
  @JsonKey(name: 'final_grade')
  num get finalGrade => throw _privateConstructorUsedError;

  /// Course Result
  @JsonKey(name: 'course_result')
  int get courseResult => throw _privateConstructorUsedError;

  /// Attempt
  @JsonKey(name: 'attempt')
  int get attempt => throw _privateConstructorUsedError;

  /// Selected Date Time
  @JsonKey(name: 'selected_date_time')
  DateTime get selectedDateTime => throw _privateConstructorUsedError;

  /// Student Course Status
  @JsonKey(name: 'student_course_status')
  int get studentCourseStatus => throw _privateConstructorUsedError;

  /// Academic Terms
  @JsonKey(name: 'academic_terms')
  int get academicTerms => throw _privateConstructorUsedError;

  /// Grade
  @JsonKey(name: 'grade')
  int get grade => throw _privateConstructorUsedError;

  /// Study Year Id
  @JsonKey(name: 'study_year_id')
  int get studyYearId => throw _privateConstructorUsedError;

  /// Course Distribution Id
  @JsonKey(name: 'course_distribution_id')
  int get courseDistributionId => throw _privateConstructorUsedError;

  /// Creation Time
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;

  /// Course Id
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;

  /// Student Academic Status Id
  @JsonKey(name: 'student_academic_status_id')
  int get studentAcademicStatusId => throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  CourseTable? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_distribution')
  CourseDistributionsTable? get courseDistribution =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  SelectedCourseResultEnum get result => throw _privateConstructorUsedError;

  /// Serializes this StudentSelectedCoursesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSelectedCoursesPublicCopyWith<StudentSelectedCoursesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSelectedCoursesPublicCopyWith<$Res> {
  factory $StudentSelectedCoursesPublicCopyWith(
          StudentSelectedCoursesPublic value,
          $Res Function(StudentSelectedCoursesPublic) then) =
      _$StudentSelectedCoursesPublicCopyWithImpl<$Res,
          StudentSelectedCoursesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'final_grade') num finalGrade,
      @JsonKey(name: 'course_result') int courseResult,
      @JsonKey(name: 'attempt') int attempt,
      @JsonKey(name: 'selected_date_time') DateTime selectedDateTime,
      @JsonKey(name: 'student_course_status') int studentCourseStatus,
      @JsonKey(name: 'academic_terms') int academicTerms,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'study_year_id') int studyYearId,
      @JsonKey(name: 'course_distribution_id') int courseDistributionId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'student_academic_status_id') int studentAcademicStatusId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'course') CourseTable? course,
      @JsonKey(name: 'course_distribution')
      CourseDistributionsTable? courseDistribution,
      @JsonKey(name: 'result') SelectedCourseResultEnum result});

  $CourseTableCopyWith<$Res>? get course;
  $CourseDistributionsTableCopyWith<$Res>? get courseDistribution;
  $SelectedCourseResultEnumCopyWith<$Res> get result;
}

/// @nodoc
class _$StudentSelectedCoursesPublicCopyWithImpl<$Res,
        $Val extends StudentSelectedCoursesPublic>
    implements $StudentSelectedCoursesPublicCopyWith<$Res> {
  _$StudentSelectedCoursesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? finalGrade = null,
    Object? courseResult = null,
    Object? attempt = null,
    Object? selectedDateTime = null,
    Object? studentCourseStatus = null,
    Object? academicTerms = null,
    Object? grade = null,
    Object? studyYearId = null,
    Object? courseDistributionId = null,
    Object? creationTime = null,
    Object? courseId = null,
    Object? studentAcademicStatusId = null,
    Object? id = null,
    Object? course = freezed,
    Object? courseDistribution = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      finalGrade: null == finalGrade
          ? _value.finalGrade
          : finalGrade // ignore: cast_nullable_to_non_nullable
              as num,
      courseResult: null == courseResult
          ? _value.courseResult
          : courseResult // ignore: cast_nullable_to_non_nullable
              as int,
      attempt: null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDateTime: null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentCourseStatus: null == studentCourseStatus
          ? _value.studentCourseStatus
          : studentCourseStatus // ignore: cast_nullable_to_non_nullable
              as int,
      academicTerms: null == academicTerms
          ? _value.academicTerms
          : academicTerms // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      studyYearId: null == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int,
      courseDistributionId: null == courseDistributionId
          ? _value.courseDistributionId
          : courseDistributionId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      studentAcademicStatusId: null == studentAcademicStatusId
          ? _value.studentAcademicStatusId
          : studentAcademicStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseTable?,
      courseDistribution: freezed == courseDistribution
          ? _value.courseDistribution
          : courseDistribution // ignore: cast_nullable_to_non_nullable
              as CourseDistributionsTable?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SelectedCourseResultEnum,
    ) as $Val);
  }

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTableCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseTableCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseDistributionsTableCopyWith<$Res>? get courseDistribution {
    if (_value.courseDistribution == null) {
      return null;
    }

    return $CourseDistributionsTableCopyWith<$Res>(_value.courseDistribution!,
        (value) {
      return _then(_value.copyWith(courseDistribution: value) as $Val);
    });
  }

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedCourseResultEnumCopyWith<$Res> get result {
    return $SelectedCourseResultEnumCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentSelectedCoursesPublicImplCopyWith<$Res>
    implements $StudentSelectedCoursesPublicCopyWith<$Res> {
  factory _$$StudentSelectedCoursesPublicImplCopyWith(
          _$StudentSelectedCoursesPublicImpl value,
          $Res Function(_$StudentSelectedCoursesPublicImpl) then) =
      __$$StudentSelectedCoursesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'final_grade') num finalGrade,
      @JsonKey(name: 'course_result') int courseResult,
      @JsonKey(name: 'attempt') int attempt,
      @JsonKey(name: 'selected_date_time') DateTime selectedDateTime,
      @JsonKey(name: 'student_course_status') int studentCourseStatus,
      @JsonKey(name: 'academic_terms') int academicTerms,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'study_year_id') int studyYearId,
      @JsonKey(name: 'course_distribution_id') int courseDistributionId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'student_academic_status_id') int studentAcademicStatusId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'course') CourseTable? course,
      @JsonKey(name: 'course_distribution')
      CourseDistributionsTable? courseDistribution,
      @JsonKey(name: 'result') SelectedCourseResultEnum result});

  @override
  $CourseTableCopyWith<$Res>? get course;
  @override
  $CourseDistributionsTableCopyWith<$Res>? get courseDistribution;
  @override
  $SelectedCourseResultEnumCopyWith<$Res> get result;
}

/// @nodoc
class __$$StudentSelectedCoursesPublicImplCopyWithImpl<$Res>
    extends _$StudentSelectedCoursesPublicCopyWithImpl<$Res,
        _$StudentSelectedCoursesPublicImpl>
    implements _$$StudentSelectedCoursesPublicImplCopyWith<$Res> {
  __$$StudentSelectedCoursesPublicImplCopyWithImpl(
      _$StudentSelectedCoursesPublicImpl _value,
      $Res Function(_$StudentSelectedCoursesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? finalGrade = null,
    Object? courseResult = null,
    Object? attempt = null,
    Object? selectedDateTime = null,
    Object? studentCourseStatus = null,
    Object? academicTerms = null,
    Object? grade = null,
    Object? studyYearId = null,
    Object? courseDistributionId = null,
    Object? creationTime = null,
    Object? courseId = null,
    Object? studentAcademicStatusId = null,
    Object? id = null,
    Object? course = freezed,
    Object? courseDistribution = freezed,
    Object? result = null,
  }) {
    return _then(_$StudentSelectedCoursesPublicImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      finalGrade: null == finalGrade
          ? _value.finalGrade
          : finalGrade // ignore: cast_nullable_to_non_nullable
              as num,
      courseResult: null == courseResult
          ? _value.courseResult
          : courseResult // ignore: cast_nullable_to_non_nullable
              as int,
      attempt: null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDateTime: null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentCourseStatus: null == studentCourseStatus
          ? _value.studentCourseStatus
          : studentCourseStatus // ignore: cast_nullable_to_non_nullable
              as int,
      academicTerms: null == academicTerms
          ? _value.academicTerms
          : academicTerms // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      studyYearId: null == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int,
      courseDistributionId: null == courseDistributionId
          ? _value.courseDistributionId
          : courseDistributionId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      studentAcademicStatusId: null == studentAcademicStatusId
          ? _value.studentAcademicStatusId
          : studentAcademicStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseTable?,
      courseDistribution: freezed == courseDistribution
          ? _value.courseDistribution
          : courseDistribution // ignore: cast_nullable_to_non_nullable
              as CourseDistributionsTable?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SelectedCourseResultEnum,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSelectedCoursesPublicImpl extends _StudentSelectedCoursesPublic {
  const _$StudentSelectedCoursesPublicImpl(
      {@JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'final_grade') required this.finalGrade,
      @JsonKey(name: 'course_result') required this.courseResult,
      @JsonKey(name: 'attempt') required this.attempt,
      @JsonKey(name: 'selected_date_time') required this.selectedDateTime,
      @JsonKey(name: 'student_course_status') required this.studentCourseStatus,
      @JsonKey(name: 'academic_terms') required this.academicTerms,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'study_year_id') required this.studyYearId,
      @JsonKey(name: 'course_distribution_id')
      required this.courseDistributionId,
      @JsonKey(name: 'creation_time') required this.creationTime,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'student_academic_status_id')
      required this.studentAcademicStatusId,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'course') required this.course,
      @JsonKey(name: 'course_distribution') required this.courseDistribution,
      @JsonKey(name: 'result') required this.result = 1})
      : super._();

  factory _$StudentSelectedCoursesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentSelectedCoursesPublicImplFromJson(json);

  /// Student Id
  @override
  @JsonKey(name: 'student_id')
  final int studentId;

  /// Final Grade
  @override
  @JsonKey(name: 'final_grade')
  final num finalGrade;

  /// Course Result
  @override
  @JsonKey(name: 'course_result')
  final int courseResult;

  /// Attempt
  @override
  @JsonKey(name: 'attempt')
  final int attempt;

  /// Selected Date Time
  @override
  @JsonKey(name: 'selected_date_time')
  final DateTime selectedDateTime;

  /// Student Course Status
  @override
  @JsonKey(name: 'student_course_status')
  final int studentCourseStatus;

  /// Academic Terms
  @override
  @JsonKey(name: 'academic_terms')
  final int academicTerms;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  final int grade;

  /// Study Year Id
  @override
  @JsonKey(name: 'study_year_id')
  final int studyYearId;

  /// Course Distribution Id
  @override
  @JsonKey(name: 'course_distribution_id')
  final int courseDistributionId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  final int courseId;

  /// Student Academic Status Id
  @override
  @JsonKey(name: 'student_academic_status_id')
  final int studentAcademicStatusId;

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'course')
  final CourseTable? course;
  @override
  @JsonKey(name: 'course_distribution')
  final CourseDistributionsTable? courseDistribution;
  @override
  @JsonKey(name: 'result')
  final SelectedCourseResultEnum result;

  @override
  String toString() {
    return 'StudentSelectedCoursesPublic(studentId: $studentId, finalGrade: $finalGrade, courseResult: $courseResult, attempt: $attempt, selectedDateTime: $selectedDateTime, studentCourseStatus: $studentCourseStatus, academicTerms: $academicTerms, grade: $grade, studyYearId: $studyYearId, courseDistributionId: $courseDistributionId, creationTime: $creationTime, courseId: $courseId, studentAcademicStatusId: $studentAcademicStatusId, id: $id, course: $course, courseDistribution: $courseDistribution, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSelectedCoursesPublicImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.finalGrade, finalGrade) ||
                other.finalGrade == finalGrade) &&
            (identical(other.courseResult, courseResult) ||
                other.courseResult == courseResult) &&
            (identical(other.attempt, attempt) || other.attempt == attempt) &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime) &&
            (identical(other.studentCourseStatus, studentCourseStatus) ||
                other.studentCourseStatus == studentCourseStatus) &&
            (identical(other.academicTerms, academicTerms) ||
                other.academicTerms == academicTerms) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.courseDistributionId, courseDistributionId) ||
                other.courseDistributionId == courseDistributionId) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(
                    other.studentAcademicStatusId, studentAcademicStatusId) ||
                other.studentAcademicStatusId == studentAcademicStatusId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.courseDistribution, courseDistribution) ||
                other.courseDistribution == courseDistribution) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      studentId,
      finalGrade,
      courseResult,
      attempt,
      selectedDateTime,
      studentCourseStatus,
      academicTerms,
      grade,
      studyYearId,
      courseDistributionId,
      creationTime,
      courseId,
      studentAcademicStatusId,
      id,
      course,
      courseDistribution,
      result);

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSelectedCoursesPublicImplCopyWith<
          _$StudentSelectedCoursesPublicImpl>
      get copyWith => __$$StudentSelectedCoursesPublicImplCopyWithImpl<
          _$StudentSelectedCoursesPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSelectedCoursesPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentSelectedCoursesPublic
    extends StudentSelectedCoursesPublic {
  const factory _StudentSelectedCoursesPublic(
          {@JsonKey(name: 'student_id') required final int studentId,
          @JsonKey(name: 'final_grade') required final num finalGrade,
          @JsonKey(name: 'course_result') required final int courseResult,
          @JsonKey(name: 'attempt') required final int attempt,
          @JsonKey(name: 'selected_date_time')
          required final DateTime selectedDateTime,
          @JsonKey(name: 'student_course_status')
          required final int studentCourseStatus,
          @JsonKey(name: 'academic_terms') required final int academicTerms,
          @JsonKey(name: 'grade') required final int grade,
          @JsonKey(name: 'study_year_id') required final int studyYearId,
          @JsonKey(name: 'course_distribution_id')
          required final int courseDistributionId,
          @JsonKey(name: 'creation_time') required final DateTime creationTime,
          @JsonKey(name: 'course_id') required final int courseId,
          @JsonKey(name: 'student_academic_status_id')
          required final int studentAcademicStatusId,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'course') required final CourseTable? course,
          @JsonKey(name: 'course_distribution')
          required final CourseDistributionsTable? courseDistribution,
          @JsonKey(name: 'result')
          required final SelectedCourseResultEnum result}) =
      _$StudentSelectedCoursesPublicImpl;
  const _StudentSelectedCoursesPublic._() : super._();

  factory _StudentSelectedCoursesPublic.fromJson(Map<String, dynamic> json) =
      _$StudentSelectedCoursesPublicImpl.fromJson;

  /// Student Id
  @override
  @JsonKey(name: 'student_id')
  int get studentId;

  /// Final Grade
  @override
  @JsonKey(name: 'final_grade')
  num get finalGrade;

  /// Course Result
  @override
  @JsonKey(name: 'course_result')
  int get courseResult;

  /// Attempt
  @override
  @JsonKey(name: 'attempt')
  int get attempt;

  /// Selected Date Time
  @override
  @JsonKey(name: 'selected_date_time')
  DateTime get selectedDateTime;

  /// Student Course Status
  @override
  @JsonKey(name: 'student_course_status')
  int get studentCourseStatus;

  /// Academic Terms
  @override
  @JsonKey(name: 'academic_terms')
  int get academicTerms;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  int get grade;

  /// Study Year Id
  @override
  @JsonKey(name: 'study_year_id')
  int get studyYearId;

  /// Course Distribution Id
  @override
  @JsonKey(name: 'course_distribution_id')
  int get courseDistributionId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  int get courseId;

  /// Student Academic Status Id
  @override
  @JsonKey(name: 'student_academic_status_id')
  int get studentAcademicStatusId;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'course')
  CourseTable? get course;
  @override
  @JsonKey(name: 'course_distribution')
  CourseDistributionsTable? get courseDistribution;
  @override
  @JsonKey(name: 'result')
  SelectedCourseResultEnum get result;

  /// Create a copy of StudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSelectedCoursesPublicImplCopyWith<
          _$StudentSelectedCoursesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
