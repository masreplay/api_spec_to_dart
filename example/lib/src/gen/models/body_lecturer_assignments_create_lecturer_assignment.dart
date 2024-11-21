import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_assignments_create_lecturer_assignment.freezed.dart';
part 'body_lecturer_assignments_create_lecturer_assignment.g.dart';

///Body_lecturer_assignments-create_lecturer_assignment

@freezed
class BodyLecturerAssignmentsCreateLecturerAssignment
    with _$BodyLecturerAssignmentsCreateLecturerAssignment {
  const BodyLecturerAssignmentsCreateLecturerAssignment._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAssignmentsCreateLecturerAssignment({
    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
  }) = _BodyLecturerAssignmentsCreateLecturerAssignment;

  factory BodyLecturerAssignmentsCreateLecturerAssignment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyLecturerAssignmentsCreateLecturerAssignmentFromJson(json);
}
