import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_assignments_create_lecturer_assignment_comment.freezed.dart';
part 'body_lecturer_assignments_create_lecturer_assignment_comment.g.dart';

@freezed
class BodyLecturerAssignmentsCreateLecturerAssignmentComment
    with _$BodyLecturerAssignmentsCreateLecturerAssignmentComment {
  const BodyLecturerAssignmentsCreateLecturerAssignmentComment._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAssignmentsCreateLecturerAssignmentComment({
    /// Content
    @JsonKey(name: 'content') required String content,
  }) = _BodyLecturerAssignmentsCreateLecturerAssignmentComment;

  factory BodyLecturerAssignmentsCreateLecturerAssignmentComment.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentFromJson(json);
}
