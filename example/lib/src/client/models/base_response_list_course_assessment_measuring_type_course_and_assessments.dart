import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_course_assessment_measuring_type_course_and_assessments.freezed.dart';
part 'base_response_list_course_assessment_measuring_type_course_and_assessments.g.dart';

@freezed
class BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments
    with _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments {
  const BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments;

  factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(
          json);
}
