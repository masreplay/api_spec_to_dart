/// CredentialsDto
/// {
///     "properties": {
///         "session_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "access_token": {
///             "type": "string"
///         },
///         "refresh_token": {
///             "type": "string"
///         },
///         "expires_at": {
///             "type": "string",
///             "format": "date-time"
///         }
///     },
///     "type": "object",
///     "required": [
///         "access_token",
///         "expires_at",
///         "refresh_token",
///         "session_id"
///     ],
///     "additionalProperties": false
/// }
library credentials_dto;

import 'exports.dart';
part 'credentials_dto.freezed.dart';
part 'credentials_dto.g.dart'; // CredentialsDto

@freezed
abstract class CredentialsDto with _$CredentialsDto {
  const CredentialsDto._();

  @jsonSerializable
  const factory CredentialsDto({
    /// sessionId
    @JsonKey(name: CredentialsDto.sessionIdKey_) required String sessionId,

    /// accessToken
    @JsonKey(name: CredentialsDto.accessTokenKey_) required String accessToken,

    /// refreshToken
    @JsonKey(name: CredentialsDto.refreshTokenKey_)
    required String refreshToken,

    /// expiresAt
    @JsonKey(name: CredentialsDto.expiresAtKey_) required DateTime expiresAt,
  }) = _CredentialsDto;

  factory CredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$CredentialsDtoFromJson(json);

  static const String sessionIdKey_ = r'session_id';

  static const String accessTokenKey_ = r'access_token';

  static const String refreshTokenKey_ = r'refresh_token';

  static const String expiresAtKey_ = r'expires_at';
}
