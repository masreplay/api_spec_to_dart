import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_assignments_get_lecturer_assignments_queries.freezed.dart';
part 'lecturer_assignments_get_lecturer_assignments_queries.g.dart';

///lecturerAssignmentsGetLecturerAssignmentsQueries

@freezed
class LecturerAssignmentsGetLecturerAssignmentsQueries
    with _$LecturerAssignmentsGetLecturerAssignmentsQueries {
  const LecturerAssignmentsGetLecturerAssignmentsQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAssignmentsGetLecturerAssignmentsQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _LecturerAssignmentsGetLecturerAssignmentsQueries;

  factory LecturerAssignmentsGetLecturerAssignmentsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerAssignmentsGetLecturerAssignmentsQueriesFromJson(
        json,
      );
}
