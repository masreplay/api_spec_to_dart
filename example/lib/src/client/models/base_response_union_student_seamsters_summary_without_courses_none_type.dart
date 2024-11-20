import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_seamsters_summary_without_courses_none_type.freezed.dart';
part 'base_response_union_student_seamsters_summary_without_courses_none_type.g.dart';

@freezed
class BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType
    with _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType {
  const BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSeamstersSummaryWithoutCourses? data,
  }) = _BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType;

  factory BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeFromJson(
          json);
}
