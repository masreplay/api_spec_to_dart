// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_notifications_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadNotificationsQueriesImpl _$$ReadNotificationsQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadNotificationsQueriesImpl(
      isRead: json['isRead'] as bool?,
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$ReadNotificationsQueriesImplToJson(
        _$ReadNotificationsQueriesImpl instance) =>
    <String, dynamic>{
      'isRead': instance.isRead,
      'page': instance.page,
      'perPage': instance.perPage,
    };
