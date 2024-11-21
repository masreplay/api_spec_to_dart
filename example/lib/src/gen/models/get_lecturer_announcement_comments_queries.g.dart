// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_lecturer_announcement_comments_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetLecturerAnnouncementCommentsQueriesImpl
    _$$GetLecturerAnnouncementCommentsQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$GetLecturerAnnouncementCommentsQueriesImpl(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic> _$$GetLecturerAnnouncementCommentsQueriesImplToJson(
        _$GetLecturerAnnouncementCommentsQueriesImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
    };
