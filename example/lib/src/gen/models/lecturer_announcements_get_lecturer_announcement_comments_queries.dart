import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_announcements_get_lecturer_announcement_comments_queries.freezed.dart';
part 'lecturer_announcements_get_lecturer_announcement_comments_queries.g.dart';

///lecturerAnnouncementsGetLecturerAnnouncementCommentsQueries

@freezed
class LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries
    with _$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries {
  const LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries;

  factory LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesFromJson(
        json,
      );
}
