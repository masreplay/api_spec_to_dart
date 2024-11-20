import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_assignments_create_lecturer_assignment.freezed.dart';
part 'body_lecturer_assignments_create_lecturer_assignment.g.dart';

@freezed
class BodyLecturerAssignmentsCreateLecturerAssignment
    with _$BodyLecturerAssignmentsCreateLecturerAssignment {
  const BodyLecturerAssignmentsCreateLecturerAssignment._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAssignmentsCreateLecturerAssignment({
    @JsonKey(name: 'files')

    /// Files
    required List files,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
  }) = _BodyLecturerAssignmentsCreateLecturerAssignment;

  factory BodyLecturerAssignmentsCreateLecturerAssignment.fromJson(
          Map<String, dynamic> json) =>
      _$BodyLecturerAssignmentsCreateLecturerAssignmentFromJson(json);
}
