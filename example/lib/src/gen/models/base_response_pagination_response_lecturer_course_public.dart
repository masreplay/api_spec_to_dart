import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_pagination_response_lecturer_course_public.freezed.dart';
part 'base_response_pagination_response_lecturer_course_public.g.dart';

///BaseResponse_PaginationResponse_LecturerCoursePublic__

@freezed
class BaseResponsePaginationResponseLecturerCoursePublic
    with _$BaseResponsePaginationResponseLecturerCoursePublic {
  const BaseResponsePaginationResponseLecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseLecturerCoursePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required PaginationResponseLecturerCoursePublic data,
  }) = _BaseResponsePaginationResponseLecturerCoursePublic;

  factory BaseResponsePaginationResponseLecturerCoursePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponsePaginationResponseLecturerCoursePublicFromJson(json);
}
