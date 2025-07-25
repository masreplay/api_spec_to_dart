/// Body_security-login
/// {
///     "properties": {
///         "grant_type": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "pattern": "^password$"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Grant Type"
///         },
///         "username": {
///             "type": "string",
///             "title": "Username"
///         },
///         "password": {
///             "type": "string",
///             "title": "Password"
///         },
///         "scope": {
///             "type": "string",
///             "default": "",
///             "title": "Scope"
///         },
///         "client_id": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Client Id"
///         },
///         "client_secret": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Client Secret"
///         }
///     },
///     "type": "object",
///     "required": [
///         "username",
///         "password"
///     ],
///     "title": "Body_security-login"
/// }
library;

import 'exports.dart';
part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart'; // BodySecurityLogin

@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  const BodySecurityLogin._();

  @jsonSerializable
  const factory BodySecurityLogin({
    /// grantType
    @JsonKey(name: BodySecurityLogin.grantTypeKey) required String? grantType,

    /// username
    @JsonKey(name: BodySecurityLogin.usernameKey) required String username,

    /// password
    @JsonKey(name: BodySecurityLogin.passwordKey) required String password,

    /// scope
    @Default('') @JsonKey(name: BodySecurityLogin.scopeKey) String scope,

    /// clientId
    @JsonKey(name: BodySecurityLogin.clientIdKey) required String? clientId,

    /// clientSecret
    @JsonKey(name: BodySecurityLogin.clientSecretKey)
    required String? clientSecret,
  }) = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);

  static const String grantTypeKey = r'grant_type';

  static const String usernameKey = r'username';

  static const String passwordKey = r'password';

  static const String scopeKey = r'scope';

  static const String clientIdKey = r'client_id';

  static const String clientSecretKey = r'client_secret';
}
