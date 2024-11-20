import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'course_assessment_measuring_type_course_and_assessments.freezed.dart';
part 'course_assessment_measuring_type_course_and_assessments.g.dart';

@freezed
class CourseAssessmentMeasuringTypeCourseAndAssessments
    with _$CourseAssessmentMeasuringTypeCourseAndAssessments {
  const CourseAssessmentMeasuringTypeCourseAndAssessments._();

  @JsonSerializable(converters: convertors)
  const factory CourseAssessmentMeasuringTypeCourseAndAssessments({
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'title')

    /// Title
    required String? title,
    @JsonKey(name: 'date')

    /// Date
    required DateTime? date,
    @JsonKey(name: 'type')

    /// Type
    required AssignmentTypeEnumString? type,
    @JsonKey(name: 'status') required AssignmentClassificationEnum? status,
    @JsonKey(name: 'total_degree')

    /// Total Degree
    required int? totalDegree,
    @JsonKey(name: 'final_degree')

    /// Final Degree
    required int? finalDegree,
    @JsonKey(name: 'number_of_times')

    /// Number Of Times
    required int? numberOfTimes,
    @JsonKey(name: 'attendance_status')
    required AttendanceStatusEnum? attendanceStatus,
    @JsonKey(name: 'link')

    /// Link
    required String? link,
  }) = _CourseAssessmentMeasuringTypeCourseAndAssessments;

  factory CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
          Map<String, dynamic> json) =>
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(json);
}
