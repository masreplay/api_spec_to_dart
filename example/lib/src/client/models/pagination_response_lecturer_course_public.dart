import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_lecturer_course_public.freezed.dart';
part 'pagination_response_lecturer_course_public.g.dart';

@freezed
class PaginationResponseLecturerCoursePublic
    with _$PaginationResponseLecturerCoursePublic {
  const PaginationResponseLecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerCoursePublic({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseLecturerCoursePublic;

  factory PaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerCoursePublicFromJson(json);
}
