/// Body_security-login
///
/// ```json
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
/// ```
library;

import 'exports.dart';
part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart';

@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  const BodySecurityLogin._();

  @jsonSerializable
  const factory BodySecurityLogin({
    /// grantType
    @JsonKey(name: BodySecurityLogin.grantTypeKey_) String? grantType,

    /// username
    @JsonKey(name: BodySecurityLogin.usernameKey_) required String username,

    /// password
    @JsonKey(name: BodySecurityLogin.passwordKey_) required String password,

    /// scope
    @Default('') @JsonKey(name: BodySecurityLogin.scopeKey_) String scope,

    /// clientId
    @JsonKey(name: BodySecurityLogin.clientIdKey_) String? clientId,

    /// clientSecret
    @JsonKey(name: BodySecurityLogin.clientSecretKey_) String? clientSecret,
  }) = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);

  static const String grantTypeKey_ = 'grant_type';

  static const String usernameKey_ = 'username';

  static const String passwordKey_ = 'password';

  static const String scopeKey_ = 'scope';

  static const String clientIdKey_ = 'client_id';

  static const String clientSecretKey_ = 'client_secret';
}
