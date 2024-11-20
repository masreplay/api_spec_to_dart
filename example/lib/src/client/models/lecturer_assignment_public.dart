import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_assignment_public.freezed.dart';
part 'lecturer_assignment_public.g.dart';

@freezed
class LecturerAssignmentPublic with _$LecturerAssignmentPublic {
  const LecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAssignmentPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
    @JsonKey(name: 'username')

    /// Username
    required String username,
    @JsonKey(name: 'avatar')

    /// Avatar
    required String? avatar,
    @Default(0)
    @JsonKey(name: 'comments_count')

    /// Comments Count
    required int commentsCount,
    @JsonKey(name: 'created_at')

    /// Created At
    required DateTime createdAt,
    @JsonKey(name: 'created_at_formatted')

    /// Created At Formatted
    required String createdAtFormatted,
    @JsonKey(name: 'files')

    /// Files
    required List files,
  }) = _LecturerAssignmentPublic;

  factory LecturerAssignmentPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAssignmentPublicFromJson(json);
}
