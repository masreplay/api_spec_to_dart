import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_assignment_public.freezed.dart';
part 'lecturer_assignment_public.g.dart';

///LecturerAssignmentPublic

@freezed
class LecturerAssignmentPublic with _$LecturerAssignmentPublic {
  const LecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAssignmentPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,

    /// Username
    @JsonKey(name: 'username') required String username,

    /// Avatar
    @JsonKey(name: 'avatar') required String? avatar,

    /// Comments Count
    @Default(0) @JsonKey(name: 'comments_count') required int commentsCount,

    /// Created At
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Created At Formatted
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,

    /// Files
    @JsonKey(name: 'files') required List<FilePublic> files,
  }) = _LecturerAssignmentPublic;

  factory LecturerAssignmentPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAssignmentPublicFromJson(json);
}
