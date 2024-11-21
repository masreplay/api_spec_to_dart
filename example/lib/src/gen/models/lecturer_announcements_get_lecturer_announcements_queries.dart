import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_announcements_get_lecturer_announcements_queries.freezed.dart';
part 'lecturer_announcements_get_lecturer_announcements_queries.g.dart';

///lecturerAnnouncementsGetLecturerAnnouncementsQueries

@freezed
class LecturerAnnouncementsGetLecturerAnnouncementsQueries
    with _$LecturerAnnouncementsGetLecturerAnnouncementsQueries {
  const LecturerAnnouncementsGetLecturerAnnouncementsQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAnnouncementsGetLecturerAnnouncementsQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _LecturerAnnouncementsGetLecturerAnnouncementsQueries;

  factory LecturerAnnouncementsGetLecturerAnnouncementsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerAnnouncementsGetLecturerAnnouncementsQueriesFromJson(
        json,
      );
}
