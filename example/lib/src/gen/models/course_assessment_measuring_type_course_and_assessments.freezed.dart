// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_assessment_measuring_type_course_and_assessments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseAssessmentMeasuringTypeCourseAndAssessments
    _$CourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(
        Map<String, dynamic> json) {
  return _CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(json);
}

/// @nodoc
mixin _$CourseAssessmentMeasuringTypeCourseAndAssessments {
  /// Id
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  /// Title
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  /// Date
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  AssignmentTypeEnum? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  AssignmentClassificationEnum? get status =>
      throw _privateConstructorUsedError;

  /// Total Degree
  @JsonKey(name: 'total_degree')
  int? get totalDegree => throw _privateConstructorUsedError;

  /// Final Degree
  @JsonKey(name: 'final_degree')
  int? get finalDegree => throw _privateConstructorUsedError;

  /// Number Of Times
  @JsonKey(name: 'number_of_times')
  int? get numberOfTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_status')
  AttendanceStatusEnum? get attendanceStatus =>
      throw _privateConstructorUsedError;

  /// Link
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this CourseAssessmentMeasuringTypeCourseAndAssessments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseAssessmentMeasuringTypeCourseAndAssessments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWith<
          CourseAssessmentMeasuringTypeCourseAndAssessments>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWith<
    $Res> {
  factory $CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWith(
          CourseAssessmentMeasuringTypeCourseAndAssessments value,
          $Res Function(CourseAssessmentMeasuringTypeCourseAndAssessments)
              then) =
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWithImpl<$Res,
          CourseAssessmentMeasuringTypeCourseAndAssessments>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'type') AssignmentTypeEnum? type,
      @JsonKey(name: 'status') AssignmentClassificationEnum? status,
      @JsonKey(name: 'total_degree') int? totalDegree,
      @JsonKey(name: 'final_degree') int? finalDegree,
      @JsonKey(name: 'number_of_times') int? numberOfTimes,
      @JsonKey(name: 'attendance_status')
      AttendanceStatusEnum? attendanceStatus,
      @JsonKey(name: 'link') String? link});
}

/// @nodoc
class _$CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWithImpl<$Res,
        $Val extends CourseAssessmentMeasuringTypeCourseAndAssessments>
    implements
        $CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWith<$Res> {
  _$CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseAssessmentMeasuringTypeCourseAndAssessments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? totalDegree = freezed,
    Object? finalDegree = freezed,
    Object? numberOfTimes = freezed,
    Object? attendanceStatus = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AssignmentTypeEnum?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentClassificationEnum?,
      totalDegree: freezed == totalDegree
          ? _value.totalDegree
          : totalDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      finalDegree: freezed == finalDegree
          ? _value.finalDegree
          : finalDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfTimes: freezed == numberOfTimes
          ? _value.numberOfTimes
          : numberOfTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as AttendanceStatusEnum?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWith<
        $Res>
    implements
        $CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWith<$Res> {
  factory _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWith(
          _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl value,
          $Res Function(_$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl)
              then) =
      __$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'type') AssignmentTypeEnum? type,
      @JsonKey(name: 'status') AssignmentClassificationEnum? status,
      @JsonKey(name: 'total_degree') int? totalDegree,
      @JsonKey(name: 'final_degree') int? finalDegree,
      @JsonKey(name: 'number_of_times') int? numberOfTimes,
      @JsonKey(name: 'attendance_status')
      AttendanceStatusEnum? attendanceStatus,
      @JsonKey(name: 'link') String? link});
}

/// @nodoc
class __$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWithImpl<
        $Res>
    extends _$CourseAssessmentMeasuringTypeCourseAndAssessmentsCopyWithImpl<
        $Res, _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl>
    implements
        _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWith<$Res> {
  __$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWithImpl(
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl _value,
      $Res Function(_$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of CourseAssessmentMeasuringTypeCourseAndAssessments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? totalDegree = freezed,
    Object? finalDegree = freezed,
    Object? numberOfTimes = freezed,
    Object? attendanceStatus = freezed,
    Object? link = freezed,
  }) {
    return _then(_$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AssignmentTypeEnum?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentClassificationEnum?,
      totalDegree: freezed == totalDegree
          ? _value.totalDegree
          : totalDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      finalDegree: freezed == finalDegree
          ? _value.finalDegree
          : finalDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfTimes: freezed == numberOfTimes
          ? _value.numberOfTimes
          : numberOfTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as AttendanceStatusEnum?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl
    extends _CourseAssessmentMeasuringTypeCourseAndAssessments {
  const _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'total_degree') required this.totalDegree,
      @JsonKey(name: 'final_degree') required this.finalDegree,
      @JsonKey(name: 'number_of_times') required this.numberOfTimes,
      @JsonKey(name: 'attendance_status') required this.attendanceStatus,
      @JsonKey(name: 'link') required this.link})
      : super._();

  factory _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int? id;

  /// Title
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Date
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'type')
  final AssignmentTypeEnum? type;
  @override
  @JsonKey(name: 'status')
  final AssignmentClassificationEnum? status;

  /// Total Degree
  @override
  @JsonKey(name: 'total_degree')
  final int? totalDegree;

  /// Final Degree
  @override
  @JsonKey(name: 'final_degree')
  final int? finalDegree;

  /// Number Of Times
  @override
  @JsonKey(name: 'number_of_times')
  final int? numberOfTimes;
  @override
  @JsonKey(name: 'attendance_status')
  final AttendanceStatusEnum? attendanceStatus;

  /// Link
  @override
  @JsonKey(name: 'link')
  final String? link;

  @override
  String toString() {
    return 'CourseAssessmentMeasuringTypeCourseAndAssessments(id: $id, title: $title, date: $date, type: $type, status: $status, totalDegree: $totalDegree, finalDegree: $finalDegree, numberOfTimes: $numberOfTimes, attendanceStatus: $attendanceStatus, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalDegree, totalDegree) ||
                other.totalDegree == totalDegree) &&
            (identical(other.finalDegree, finalDegree) ||
                other.finalDegree == finalDegree) &&
            (identical(other.numberOfTimes, numberOfTimes) ||
                other.numberOfTimes == numberOfTimes) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, type, status,
      totalDegree, finalDegree, numberOfTimes, attendanceStatus, link);

  /// Create a copy of CourseAssessmentMeasuringTypeCourseAndAssessments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWith<
          _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl>
      get copyWith =>
          __$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWithImpl<
                  _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplToJson(
      this,
    );
  }
}

abstract class _CourseAssessmentMeasuringTypeCourseAndAssessments
    extends CourseAssessmentMeasuringTypeCourseAndAssessments {
  const factory _CourseAssessmentMeasuringTypeCourseAndAssessments(
          {@JsonKey(name: 'id') required final int? id,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'date') required final DateTime? date,
          @JsonKey(name: 'type') required final AssignmentTypeEnum? type,
          @JsonKey(name: 'status')
          required final AssignmentClassificationEnum? status,
          @JsonKey(name: 'total_degree') required final int? totalDegree,
          @JsonKey(name: 'final_degree') required final int? finalDegree,
          @JsonKey(name: 'number_of_times') required final int? numberOfTimes,
          @JsonKey(name: 'attendance_status')
          required final AttendanceStatusEnum? attendanceStatus,
          @JsonKey(name: 'link') required final String? link}) =
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl;
  const _CourseAssessmentMeasuringTypeCourseAndAssessments._() : super._();

  factory _CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
          Map<String, dynamic> json) =
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int? get id;

  /// Title
  @override
  @JsonKey(name: 'title')
  String? get title;

  /// Date
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'type')
  AssignmentTypeEnum? get type;
  @override
  @JsonKey(name: 'status')
  AssignmentClassificationEnum? get status;

  /// Total Degree
  @override
  @JsonKey(name: 'total_degree')
  int? get totalDegree;

  /// Final Degree
  @override
  @JsonKey(name: 'final_degree')
  int? get finalDegree;

  /// Number Of Times
  @override
  @JsonKey(name: 'number_of_times')
  int? get numberOfTimes;
  @override
  @JsonKey(name: 'attendance_status')
  AttendanceStatusEnum? get attendanceStatus;

  /// Link
  @override
  @JsonKey(name: 'link')
  String? get link;

  /// Create a copy of CourseAssessmentMeasuringTypeCourseAndAssessments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplCopyWith<
          _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
