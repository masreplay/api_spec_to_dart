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
    @JsonKey(name: 'page')

    /// Page
    required int page,
    @JsonKey(name: 'per_page')

    /// Per Page
    required int perPage,
    @JsonKey(name: 'total')

    /// Total
    required int total,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _PaginationResponseLecturerCoursePublic;

  factory PaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerCoursePublicFromJson(json);
}
