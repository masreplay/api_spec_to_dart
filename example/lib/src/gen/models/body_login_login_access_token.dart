import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'body_login_login_access_token.freezed.dart';
part 'body_login_login_access_token.g.dart';

/// Body_login-login_access_token

@freezed
abstract class BodyLoginLoginAccessToken with _$BodyLoginLoginAccessToken {
  const BodyLoginLoginAccessToken._();

  static const String grantTypeKey = 'grant_type';
static const String usernameKey = 'username';
static const String passwordKey = 'password';
static const String scopeKey = 'scope';
static const String clientIdKey = 'client_id';
static const String clientSecretKey = 'client_secret';

  @JsonSerializable(converters: convertors)
  const factory BodyLoginLoginAccessToken({
/// Grant Type
@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey)
required Stringdynamic? grantType,/// username
@JsonKey(name: BodyLoginLoginAccessToken.usernameKey)
required String username,/// password
@JsonKey(name: BodyLoginLoginAccessToken.passwordKey)
required String password,/// scope
@Default('')
@JsonKey(name: BodyLoginLoginAccessToken.scopeKey)
String scope,/// Client Id
@JsonKey(name: BodyLoginLoginAccessToken.clientIdKey)
required Stringdynamic? clientId,/// Client Secret
@JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey)
required Stringdynamic? clientSecret,  }) = _BodyLoginLoginAccessToken;

  factory BodyLoginLoginAccessToken.fromJson(
    Map<String, dynamic> json,
  ) => _$BodyLoginLoginAccessTokenFromJson(
    json,
  );
}
