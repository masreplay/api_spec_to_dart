/// LoginRequestDto
/// {
///     "properties": {
///         "username": {
///             "type": "string"
///         },
///         "password": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "password",
///         "username"
///     ],
///     "description": "Login payload from client.",
///     "additionalProperties": false
/// }
library login_request_dto;

import 'exports.dart';
part 'login_request_dto.freezed.dart';
part 'login_request_dto.g.dart'; // LoginRequestDto

@freezed
abstract class LoginRequestDto with _$LoginRequestDto {
  const LoginRequestDto._();

  @jsonSerializable
  const factory LoginRequestDto({
    /// username
    @JsonKey(name: LoginRequestDto.usernameKey_) required String username,

    /// password
    @JsonKey(name: LoginRequestDto.passwordKey_) required String password,
  }) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoFromJson(json);

  static const String usernameKey_ = r'username';

  static const String passwordKey_ = r'password';
}
