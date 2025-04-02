// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_read_users_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersReadUsersQueries _$UsersReadUsersQueriesFromJson(
  Map<String, dynamic> json,
) => _UsersReadUsersQueries(
  skip: (json['skip'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 100,
);

Map<String, dynamic> _$UsersReadUsersQueriesToJson(
  _UsersReadUsersQueries instance,
) => <String, dynamic>{'skip': instance.skip, 'limit': instance.limit};
