import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_pagination_response_lecturer_assignment_public.freezed.dart';
part 'base_response_pagination_response_lecturer_assignment_public.g.dart';

///BaseResponse_PaginationResponse_LecturerAssignmentPublic__

@freezed
class BaseResponsePaginationResponseLecturerAssignmentPublic
    with _$BaseResponsePaginationResponseLecturerAssignmentPublic {
  const BaseResponsePaginationResponseLecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseLecturerAssignmentPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponseLecturerAssignmentPublic data,
  }) = _BaseResponsePaginationResponseLecturerAssignmentPublic;

  factory BaseResponsePaginationResponseLecturerAssignmentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponsePaginationResponseLecturerAssignmentPublicFromJson(json);
}
