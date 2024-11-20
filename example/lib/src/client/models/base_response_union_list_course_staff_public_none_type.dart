import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_union_list_course_staff_public_none_type.freezed.dart';
part 'base_response_union_list_course_staff_public_none_type.g.dart';

@freezed
class BaseResponseUnionListCourseStaffPublicNoneType
    with _$BaseResponseUnionListCourseStaffPublicNoneType {
  const factory BaseResponseUnionListCourseStaffPublicNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List? data,
  }) = _BaseResponseUnionListCourseStaffPublicNoneType;

  factory BaseResponseUnionListCourseStaffPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionListCourseStaffPublicNoneTypeFromJson(json);
}
