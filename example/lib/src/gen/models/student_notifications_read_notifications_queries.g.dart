// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_notifications_read_notifications_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentNotificationsReadNotificationsQueriesImpl
    _$$StudentNotificationsReadNotificationsQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentNotificationsReadNotificationsQueriesImpl(
          isRead: json['isRead'] as bool?,
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic> _$$StudentNotificationsReadNotificationsQueriesImplToJson(
        _$StudentNotificationsReadNotificationsQueriesImpl instance) =>
    <String, dynamic>{
      'isRead': instance.isRead,
      'page': instance.page,
      'perPage': instance.perPage,
    };
