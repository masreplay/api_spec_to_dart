import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_assignments_update_lecturer_assignment.freezed.dart';
part 'body_lecturer_assignments_update_lecturer_assignment.g.dart';

///Body_lecturer_assignments-update_lecturer_assignment

@freezed
class BodyLecturerAssignmentsUpdateLecturerAssignment
    with _$BodyLecturerAssignmentsUpdateLecturerAssignment {
  const BodyLecturerAssignmentsUpdateLecturerAssignment._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAssignmentsUpdateLecturerAssignment({
    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
  }) = _BodyLecturerAssignmentsUpdateLecturerAssignment;

  factory BodyLecturerAssignmentsUpdateLecturerAssignment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentFromJson(
        json,
      );
}
