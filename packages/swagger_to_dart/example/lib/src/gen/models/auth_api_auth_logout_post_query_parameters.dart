/// AuthApiAuthLogoutPostQueryParameters
/// {
///     "properties": {
///         "sessionId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library auth_api_auth_logout_post_query_parameters;

import 'exports.dart';
part 'auth_api_auth_logout_post_query_parameters.freezed.dart';
part 'auth_api_auth_logout_post_query_parameters.g.dart'; // AuthApiAuthLogoutPostQueryParameters

@freezed
abstract class AuthApiAuthLogoutPostQueryParameters
    with _$AuthApiAuthLogoutPostQueryParameters {
  const AuthApiAuthLogoutPostQueryParameters._();

  @jsonSerializable
  const factory AuthApiAuthLogoutPostQueryParameters({
    /// sessionId
    @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
    String? sessionId,
  }) = _AuthApiAuthLogoutPostQueryParameters;

  factory AuthApiAuthLogoutPostQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AuthApiAuthLogoutPostQueryParametersFromJson(json);

  static const String sessionIdKey_ = r'sessionId';
}
