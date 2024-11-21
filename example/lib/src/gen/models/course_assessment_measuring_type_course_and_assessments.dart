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
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Title
    @JsonKey(name: 'title') required String? title,

    /// Date
    @JsonKey(name: 'date') required DateTime? date,
    @JsonKey(name: 'type') required AssignmentTypeEnum? type,
    @JsonKey(name: 'status') required AssignmentClassificationEnum? status,

    /// Total Degree
    @JsonKey(name: 'total_degree') required int? totalDegree,

    /// Final Degree
    @JsonKey(name: 'final_degree') required int? finalDegree,

    /// Number Of Times
    @JsonKey(name: 'number_of_times') required int? numberOfTimes,
    @JsonKey(name: 'attendance_status')
    required AttendanceStatusEnum? attendanceStatus,

    /// Link
    @JsonKey(name: 'link') required String? link,
  }) = _CourseAssessmentMeasuringTypeCourseAndAssessments;

  factory CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(json);
}
