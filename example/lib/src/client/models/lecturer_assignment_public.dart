import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_assignment_public.freezed.dart';
part 'lecturer_assignment_public.g.dart';

@freezed
class LecturerAssignmentPublic with _$LecturerAssignmentPublic {
  const LecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAssignmentPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'avatar') required String? avatar,
    @Default(0) @JsonKey(name: 'comments_count') required int commentsCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,
    @JsonKey(name: 'files') required List files,
  }) = _LecturerAssignmentPublic;

  factory LecturerAssignmentPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAssignmentPublicFromJson(json);
}
