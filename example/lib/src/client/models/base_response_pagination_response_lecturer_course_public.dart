import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_pagination_response_lecturer_course_public.freezed.dart';
part 'base_response_pagination_response_lecturer_course_public.g.dart';

@freezed
class BaseResponsePaginationResponseLecturerCoursePublic
    with _$BaseResponsePaginationResponseLecturerCoursePublic {
  const factory BaseResponsePaginationResponseLecturerCoursePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponse_LecturerCoursePublic_ data,
  }) = _BaseResponsePaginationResponseLecturerCoursePublic;

  factory BaseResponsePaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseLecturerCoursePublicFromJson(json);
}
