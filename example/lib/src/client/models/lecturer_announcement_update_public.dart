import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_announcement_update_public.freezed.dart';
part 'lecturer_announcement_update_public.g.dart';

@freezed
class LecturerAnnouncementUpdatePublic with _$LecturerAnnouncementUpdatePublic {
  const factory LecturerAnnouncementUpdatePublic({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
  }) = _LecturerAnnouncementUpdatePublic;

  factory LecturerAnnouncementUpdatePublic.fromJson(
          Map<String, dynamic> json) =>
      _$LecturerAnnouncementUpdatePublicFromJson(json);
}
