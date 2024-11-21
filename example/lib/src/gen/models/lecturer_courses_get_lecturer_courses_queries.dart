import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_courses_get_lecturer_courses_queries.freezed.dart';
part 'lecturer_courses_get_lecturer_courses_queries.g.dart';

///lecturerCoursesGetLecturerCoursesQueries

@freezed
class LecturerCoursesGetLecturerCoursesQueries
    with _$LecturerCoursesGetLecturerCoursesQueries {
  const LecturerCoursesGetLecturerCoursesQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerCoursesGetLecturerCoursesQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _LecturerCoursesGetLecturerCoursesQueries;

  factory LecturerCoursesGetLecturerCoursesQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerCoursesGetLecturerCoursesQueriesFromJson(
        json,
      );
}
