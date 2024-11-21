import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'update_selected_courses_queries.freezed.dart';
part 'update_selected_courses_queries.g.dart';

///updateSelectedCoursesQueries

@freezed
class UpdateSelectedCoursesQueries with _$UpdateSelectedCoursesQueries {
  const UpdateSelectedCoursesQueries._();

  @JsonSerializable(converters: convertors)
  const factory UpdateSelectedCoursesQueries({
    @Default(SemesterFilter.all)
    @JsonKey(name: 'filter')
    required SemesterFilter filter,
  }) = _UpdateSelectedCoursesQueries;

  factory UpdateSelectedCoursesQueries.fromJson(Map<String, dynamic> json) =>
      _$UpdateSelectedCoursesQueriesFromJson(json);
}
