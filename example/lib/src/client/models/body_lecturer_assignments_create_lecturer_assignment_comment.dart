import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_lecturer_assignments_create_lecturer_assignment_comment.freezed.dart';
part 'body_lecturer_assignments_create_lecturer_assignment_comment.g.dart';

@freezed
class BodyLecturerAssignmentsCreateLecturerAssignmentComment
    with _$BodyLecturerAssignmentsCreateLecturerAssignmentComment {
  const factory BodyLecturerAssignmentsCreateLecturerAssignmentComment({
    @JsonKey(name: 'content') required String content,
  }) = _BodyLecturerAssignmentsCreateLecturerAssignmentComment;

  factory BodyLecturerAssignmentsCreateLecturerAssignmentComment.fromJson(
          Map<String, dynamic> json) =>
      _$BodyLecturerAssignmentsCreateLecturerAssignmentCommentFromJson(json);
}
