// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_auth_logout_post_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthApiAuthLogoutPostQueryParameters
    _$AuthApiAuthLogoutPostQueryParametersFromJson(Map<String, dynamic> json) =>
        _AuthApiAuthLogoutPostQueryParameters(
          sessionId: json['sessionId'] as String?,
        );

Map<String, dynamic> _$AuthApiAuthLogoutPostQueryParametersToJson(
        _AuthApiAuthLogoutPostQueryParameters instance) =>
    <String, dynamic>{
      if (instance.sessionId case final value?) 'sessionId': value,
    };
