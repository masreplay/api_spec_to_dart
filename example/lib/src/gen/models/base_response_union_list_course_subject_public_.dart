import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_list_course_subject_public_.freezed.dart';
part 'base_response_union_list_course_subject_public_.g.dart';

@freezed
class BaseResponseUnionListCourseSubjectPublic
    with _$BaseResponseUnionListCourseSubjectPublic {
  const BaseResponseUnionListCourseSubjectPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListCourseSubjectPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<CourseSubjectPublic>? data,
  }) = _BaseResponseUnionListCourseSubjectPublic;

  factory BaseResponseUnionListCourseSubjectPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionListCourseSubjectPublicFromJson(json);
}
