import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_selected_courses_update_selected_courses_queries.freezed.dart';
part 'student_selected_courses_update_selected_courses_queries.g.dart';

///studentSelectedCoursesUpdateSelectedCoursesQueries

@freezed
class StudentSelectedCoursesUpdateSelectedCoursesQueries
    with _$StudentSelectedCoursesUpdateSelectedCoursesQueries {
  const StudentSelectedCoursesUpdateSelectedCoursesQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentSelectedCoursesUpdateSelectedCoursesQueries({
    @Default(SemesterFilter.all) @JsonKey(name: 'filter') SemesterFilter filter,
  }) = _StudentSelectedCoursesUpdateSelectedCoursesQueries;

  factory StudentSelectedCoursesUpdateSelectedCoursesQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSelectedCoursesUpdateSelectedCoursesQueriesFromJson(json);
}
