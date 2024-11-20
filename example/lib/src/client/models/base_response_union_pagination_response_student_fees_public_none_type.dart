import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_union_pagination_response_student_fees_public_none_type.freezed.dart';
part 'base_response_union_pagination_response_student_fees_public_none_type.g.dart';

@freezed
class BaseResponseUnionPaginationResponseStudentFeesPublicNoneType
    with _$BaseResponseUnionPaginationResponseStudentFeesPublicNoneType {
  const factory BaseResponseUnionPaginationResponseStudentFeesPublicNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required PaginationResponseStudentFeesPublic? data,
  }) = _BaseResponseUnionPaginationResponseStudentFeesPublicNoneType;

  factory BaseResponseUnionPaginationResponseStudentFeesPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeFromJson(
          json);
}
