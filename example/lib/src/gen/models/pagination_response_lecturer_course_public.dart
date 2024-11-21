import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'pagination_response_lecturer_course_public.freezed.dart';
part 'pagination_response_lecturer_course_public.g.dart';

@freezed
class PaginationResponseLecturerCoursePublic
    with _$PaginationResponseLecturerCoursePublic {
  const PaginationResponseLecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerCoursePublic({
    /// Page
    @JsonKey(name: 'page') required int page,

    /// Per Page
    @JsonKey(name: 'per_page') required int perPage,

    /// Total
    @JsonKey(name: 'total') required int total,

    /// Data
    @JsonKey(name: 'data') required List<LecturerCoursePublic> data,
  }) = _PaginationResponseLecturerCoursePublic;

  factory PaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerCoursePublicFromJson(json);
}
