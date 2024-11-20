import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_announcement_public.freezed.dart';
part 'lecturer_announcement_public.g.dart';

@freezed
class LecturerAnnouncementPublic with _$LecturerAnnouncementPublic {
  const factory LecturerAnnouncementPublic({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'avatar') required String? avatar,
    @Default(0) @JsonKey(name: 'comments_count') required int commentsCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,
    @JsonKey(name: 'files') required List files,
  }) = _LecturerAnnouncementPublic;

  factory LecturerAnnouncementPublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerAnnouncementPublicFromJson(json);
}
