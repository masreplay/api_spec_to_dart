import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_list_course_assessment_measuring_type_course_and_assessments.freezed.dart';
part 'base_response_list_course_assessment_measuring_type_course_and_assessments.g.dart';

@freezed
class BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments
    with _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments {
  const BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data')
    required List<CourseAssessmentMeasuringTypeCourseAndAssessments> data,
  }) = _BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments;

  factory BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsFromJson(
        json,
      );
}
