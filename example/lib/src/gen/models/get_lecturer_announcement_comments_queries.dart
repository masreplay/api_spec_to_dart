import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'get_lecturer_announcement_comments_queries.freezed.dart';
part 'get_lecturer_announcement_comments_queries.g.dart';

///getLecturerAnnouncementCommentsQueries

@freezed
class GetLecturerAnnouncementCommentsQueries
    with _$GetLecturerAnnouncementCommentsQueries {
  const GetLecturerAnnouncementCommentsQueries._();

  @JsonSerializable(converters: convertors)
  const factory GetLecturerAnnouncementCommentsQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') required int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') required int perPage,
  }) = _GetLecturerAnnouncementCommentsQueries;

  factory GetLecturerAnnouncementCommentsQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetLecturerAnnouncementCommentsQueriesFromJson(json);
}
