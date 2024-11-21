// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_announcements_get_lecturer_announcement_comments_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesImpl
    _$$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesImpl(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic>
    _$$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesImplToJson(
            _$LecturerAnnouncementsGetLecturerAnnouncementCommentsQueriesImpl
                instance) =>
        <String, dynamic>{
          'page': instance.page,
          'perPage': instance.perPage,
        };
