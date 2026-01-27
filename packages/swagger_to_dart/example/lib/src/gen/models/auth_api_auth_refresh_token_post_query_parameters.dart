/// AuthApiAuthRefreshTokenPostQueryParameters
/// {
///     "properties": {
///         "refreshToken": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library auth_api_auth_refresh_token_post_query_parameters;

import 'exports.dart';
part 'auth_api_auth_refresh_token_post_query_parameters.freezed.dart';
part 'auth_api_auth_refresh_token_post_query_parameters.g.dart'; // AuthApiAuthRefreshTokenPostQueryParameters

@freezed
abstract class AuthApiAuthRefreshTokenPostQueryParameters
    with _$AuthApiAuthRefreshTokenPostQueryParameters {
  const AuthApiAuthRefreshTokenPostQueryParameters._();

  @jsonSerializable
  const factory AuthApiAuthRefreshTokenPostQueryParameters({
    /// refreshToken
    @JsonKey(name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
    String? refreshToken,
  }) = _AuthApiAuthRefreshTokenPostQueryParameters;

  factory AuthApiAuthRefreshTokenPostQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AuthApiAuthRefreshTokenPostQueryParametersFromJson(json);

  static const String refreshTokenKey_ = r'refreshToken';
}
