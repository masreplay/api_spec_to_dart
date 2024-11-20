import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_pagination_response_lecturer_assignment_public.freezed.dart';
part 'base_response_pagination_response_lecturer_assignment_public.g.dart';

@freezed
class BaseResponsePaginationResponseLecturerAssignmentPublic
    with _$BaseResponsePaginationResponseLecturerAssignmentPublic {
  const factory BaseResponsePaginationResponseLecturerAssignmentPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponse_LecturerAssignmentPublic_ data,
  }) = _BaseResponsePaginationResponseLecturerAssignmentPublic;

  factory BaseResponsePaginationResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseLecturerAssignmentPublicFromJson(json);
}
