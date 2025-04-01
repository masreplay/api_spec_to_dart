import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_login_login_access_token.freezed.dart';
part 'body_login_login_access_token.g.dart';

/// Body_login-login_access_token

@freezed
abstract class BodyLoginLoginAccessToken with _$BodyLoginLoginAccessToken {
  @JsonSerializable(converters: convertors)
  const factory BodyLoginLoginAccessToken({
    /// Grant Type
    @JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey)
    required String? grantType,

    /// username
    @JsonKey(name: BodyLoginLoginAccessToken.usernameKey)
    required String username,

    /// password
    @JsonKey(name: BodyLoginLoginAccessToken.passwordKey)
    required String password,

    /// scope
    @Default('')
    @JsonKey(name: BodyLoginLoginAccessToken.scopeKey)
    String scope,

    /// Client Id
    @JsonKey(name: BodyLoginLoginAccessToken.clientIdKey)
    required String? clientId,

    /// Client Secret
    @JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey)
    required String? clientSecret,
  }) = _BodyLoginLoginAccessToken;

  factory BodyLoginLoginAccessToken.fromJson(Map<String, dynamic> json) =>
      _$BodyLoginLoginAccessTokenFromJson(json);
  const BodyLoginLoginAccessToken._();

  static const String grantTypeKey = 'grant_type';
  static const String usernameKey = 'username';
  static const String passwordKey = 'password';
  static const String scopeKey = 'scope';
  static const String clientIdKey = 'client_id';
  static const String clientSecretKey = 'client_secret';
}
