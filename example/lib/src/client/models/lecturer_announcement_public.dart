import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_announcement_public.freezed.dart';
part 'lecturer_announcement_public.g.dart';

@freezed
class LecturerAnnouncementPublic with _$LecturerAnnouncementPublic {
  const LecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAnnouncementPublic({
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
    @JsonKey(name: 'id')

    /// Id
    required int id,
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
  }) = _LecturerAnnouncementPublic;

  factory LecturerAnnouncementPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAnnouncementPublicFromJson(json);
}
