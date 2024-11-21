// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_announcements_get_lecturer_announcements_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerAnnouncementsGetLecturerAnnouncementsQueriesImpl
    _$$LecturerAnnouncementsGetLecturerAnnouncementsQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$LecturerAnnouncementsGetLecturerAnnouncementsQueriesImpl(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String,
    dynamic> _$$LecturerAnnouncementsGetLecturerAnnouncementsQueriesImplToJson(
        _$LecturerAnnouncementsGetLecturerAnnouncementsQueriesImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
    };
