import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_lecturer_assignments_create_lecturer_assignment.freezed.dart';
part 'body_lecturer_assignments_create_lecturer_assignment.g.dart';

@freezed
class BodyLecturerAssignmentsCreateLecturerAssignment
    with _$BodyLecturerAssignmentsCreateLecturerAssignment {
  const factory BodyLecturerAssignmentsCreateLecturerAssignment({
    @JsonKey(name: 'files') required List files,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
  }) = _BodyLecturerAssignmentsCreateLecturerAssignment;

  factory BodyLecturerAssignmentsCreateLecturerAssignment.fromJson(
          Map<String, dynamic> json) =>
      _$BodyLecturerAssignmentsCreateLecturerAssignmentFromJson(json);
}
