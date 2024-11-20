import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_course_assessment_measuring_type_course_and_assessments.freezed.dart';
part 'base_response_list_course_assessment_measuring_type_course_and_assessments.g.dart';

@freezed
class BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments
    with _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments {
  const factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments;

  factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(
          json);
}
