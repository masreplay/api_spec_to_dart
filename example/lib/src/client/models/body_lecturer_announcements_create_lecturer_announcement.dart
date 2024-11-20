import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_lecturer_announcements_create_lecturer_announcement.freezed.dart';
part 'body_lecturer_announcements_create_lecturer_announcement.g.dart';

@freezed
class BodyLecturerAnnouncementsCreateLecturerAnnouncement
    with _$BodyLecturerAnnouncementsCreateLecturerAnnouncement {
  const factory BodyLecturerAnnouncementsCreateLecturerAnnouncement({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
  }) = _BodyLecturerAnnouncementsCreateLecturerAnnouncement;

  factory BodyLecturerAnnouncementsCreateLecturerAnnouncement.fromJson(
          Map<String, dynamic> json) =>
      _$BodyLecturerAnnouncementsCreateLecturerAnnouncementFromJson(json);
}
