import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_assignments_update_lecturer_assignment.freezed.dart';
part 'body_lecturer_assignments_update_lecturer_assignment.g.dart';

@freezed
class BodyLecturerAssignmentsUpdateLecturerAssignment
    with _$BodyLecturerAssignmentsUpdateLecturerAssignment {
  const BodyLecturerAssignmentsUpdateLecturerAssignment._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAssignmentsUpdateLecturerAssignment({
    @JsonKey(name: 'files') required List files,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
  }) = _BodyLecturerAssignmentsUpdateLecturerAssignment;

  factory BodyLecturerAssignmentsUpdateLecturerAssignment.fromJson(
          Map<String, dynamic> json) =>
      _$BodyLecturerAssignmentsUpdateLecturerAssignmentFromJson(json);
}
