import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart';

/// Body_security-login
@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  const BodySecurityLogin._();

  static const String grantTypeKey = 'grant_type';
  static const String usernameKey = 'username';
  static const String passwordKey = 'password';
  static const String scopeKey = 'scope';
  static const String clientIdKey = 'client_id';
  static const String clientSecretKey = 'client_secret';

  @JsonSerializable(converters: convertors)
  const factory BodySecurityLogin({
    /// Grant Type
    @JsonKey(name: BodySecurityLogin.grantTypeKey) required String? grantType,

    /// username
    @JsonKey(name: BodySecurityLogin.usernameKey) required String username,

    /// password
    @JsonKey(name: BodySecurityLogin.passwordKey) required String password,

    /// scope
    @Default('') @JsonKey(name: BodySecurityLogin.scopeKey) String scope,

    /// Client Id
    @JsonKey(name: BodySecurityLogin.clientIdKey) required String? clientId,

    /// Client Secret
    @JsonKey(name: BodySecurityLogin.clientSecretKey)
    required String? clientSecret,
  }) = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);
}
