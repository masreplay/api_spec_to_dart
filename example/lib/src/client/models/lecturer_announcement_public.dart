import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_announcement_public.freezed.dart';
part 'lecturer_announcement_public.g.dart';

@freezed
class LecturerAnnouncementPublic with _$LecturerAnnouncementPublic {
  const LecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAnnouncementPublic({
    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,

    /// Id
    @JsonKey(name: 'id') required int id,

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
    @JsonKey(name: 'files') required List files,
  }) = _LecturerAnnouncementPublic;

  factory LecturerAnnouncementPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAnnouncementPublicFromJson(json);
}
