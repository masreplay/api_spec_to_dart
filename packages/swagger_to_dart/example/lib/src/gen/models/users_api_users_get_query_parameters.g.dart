// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_api_users_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersApiUsersGetQueryParameters _$UsersApiUsersGetQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _UsersApiUsersGetQueryParameters(
      active: json['active'] as bool?,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$UsersApiUsersGetQueryParametersToJson(
        _UsersApiUsersGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.active case final value?) 'active': value,
      if (instance.search case final value?) 'search': value,
    };
