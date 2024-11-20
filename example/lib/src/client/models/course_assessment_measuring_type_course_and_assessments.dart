import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'course_assessment_measuring_type_course_and_assessments.freezed.dart';
part 'course_assessment_measuring_type_course_and_assessments.g.dart';

@freezed
class CourseAssessmentMeasuringTypeCourseAndAssessments
    with _$CourseAssessmentMeasuringTypeCourseAndAssessments {
  const factory CourseAssessmentMeasuringTypeCourseAndAssessments({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'date') required DateTime? date,
    @JsonKey(name: 'type') required AssignmentTypeEnumString? type,
    @JsonKey(name: 'status') required AssignmentClassificationEnum? status,
    @JsonKey(name: 'total_degree') required int? totalDegree,
    @JsonKey(name: 'final_degree') required int? finalDegree,
    @JsonKey(name: 'number_of_times') required int? numberOfTimes,
    @JsonKey(name: 'attendance_status')
    required AttendanceStatusEnum? attendanceStatus,
    @JsonKey(name: 'link') required String? link,
  }) = _CourseAssessmentMeasuringTypeCourseAndAssessments;

  factory CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
          Map<String, dynamic> json) =>
      _$CourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(json);
}
