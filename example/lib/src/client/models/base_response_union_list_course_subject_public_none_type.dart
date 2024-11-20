import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_union_list_course_subject_public_none_type.freezed.dart';
part 'base_response_union_list_course_subject_public_none_type.g.dart';

@freezed
class BaseResponseUnionListCourseSubjectPublicNoneType
    with _$BaseResponseUnionListCourseSubjectPublicNoneType {
  const BaseResponseUnionListCourseSubjectPublicNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListCourseSubjectPublicNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List? data,
  }) = _BaseResponseUnionListCourseSubjectPublicNoneType;

  factory BaseResponseUnionListCourseSubjectPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionListCourseSubjectPublicNoneTypeFromJson(json);
}
