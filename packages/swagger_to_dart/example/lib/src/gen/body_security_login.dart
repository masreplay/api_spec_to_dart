library body_security_login;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart'; // BodySecurityLogin

@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  const BodySecurityLogin._();

  const factory BodySecurityLogin(
    /// grantType
    @JsonKey(name: grantTypeKey) String? grantType,

    /// username
    @JsonKey(name: usernameKey) String username,

    /// password
    @JsonKey(name: passwordKey) String password,

    /// scope
    @Default('') @JsonKey(name: scopeKey) String scope,

    /// clientId
    @JsonKey(name: clientIdKey) String? clientId,

    /// clientSecret
    @JsonKey(name: clientSecretKey) String? clientSecret,
  ) = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);

  static const String grantTypeKey = "grantType";

  static const String usernameKey = "username";

  static const String passwordKey = "password";

  static const String scopeKey = "scope";

  static const String clientIdKey = "clientId";

  static const String clientSecretKey = "clientSecret";
}
