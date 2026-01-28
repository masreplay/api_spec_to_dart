// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_auth_refresh_token_post_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthApiAuthRefreshTokenPostQueryParameters
    _$AuthApiAuthRefreshTokenPostQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _AuthApiAuthRefreshTokenPostQueryParameters(
          refreshToken: json['refreshToken'] as String?,
        );

Map<String, dynamic> _$AuthApiAuthRefreshTokenPostQueryParametersToJson(
        _AuthApiAuthRefreshTokenPostQueryParameters instance) =>
    <String, dynamic>{
      if (instance.refreshToken case final value?) 'refreshToken': value,
    };
