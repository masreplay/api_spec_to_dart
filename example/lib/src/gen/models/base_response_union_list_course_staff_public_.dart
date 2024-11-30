import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_list_course_staff_public_.freezed.dart';
part 'base_response_union_list_course_staff_public_.g.dart';

///BaseResponse_Union_list_CourseStaffPublic___NoneType__

@freezed
class BaseResponseUnionListCourseStaffPublic
    with _$BaseResponseUnionListCourseStaffPublic {
  const BaseResponseUnionListCourseStaffPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListCourseStaffPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<CourseStaffPublic>? data,
  }) = _BaseResponseUnionListCourseStaffPublic;

  factory BaseResponseUnionListCourseStaffPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionListCourseStaffPublicFromJson(
        json,
      );
}
