/// LoginResultDto
/// {
///     "properties": {
///         "credentials": {
///             "$ref": "#/components/schemas/CredentialsDto"
///         },
///         "user": {
///             "$ref": "#/components/schemas/UserDto"
///         }
///     },
///     "type": "object",
///     "required": [
///         "credentials",
///         "user"
///     ],
///     "additionalProperties": false
/// }
library login_result_dto;

import 'exports.dart';
part 'login_result_dto.freezed.dart';
part 'login_result_dto.g.dart'; // LoginResultDto

@freezed
abstract class LoginResultDto with _$LoginResultDto {
  const LoginResultDto._();

  @jsonSerializable
  const factory LoginResultDto({
    /// credentials
    @JsonKey(name: LoginResultDto.credentialsKey_)
    required CredentialsDto credentials,

    /// user
    @JsonKey(name: LoginResultDto.userKey_) required UserDto user,
  }) = _LoginResultDto;

  factory LoginResultDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDtoFromJson(json);

  static const String credentialsKey_ = r'credentials';

  static const String userKey_ = r'user';
}
