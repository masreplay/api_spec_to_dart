import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_pagination_response_student_fees_public_.freezed.dart';
part 'base_response_union_pagination_response_student_fees_public_.g.dart';

///BaseResponse_Union_PaginationResponse_StudentFeesPublic___NoneType__

@freezed
class BaseResponseUnionPaginationResponseStudentFeesPublic
    with _$BaseResponseUnionPaginationResponseStudentFeesPublic {
  const BaseResponseUnionPaginationResponseStudentFeesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionPaginationResponseStudentFeesPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required PaginationResponseStudentFeesPublic? data,
  }) = _BaseResponseUnionPaginationResponseStudentFeesPublic;

  factory BaseResponseUnionPaginationResponseStudentFeesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionPaginationResponseStudentFeesPublicFromJson(json);
}
