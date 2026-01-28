/// CreateUserDto
/// {
///     "properties": {
///         "username": {
///             "type": "string"
///         },
///         "name": {
///             "type": "string"
///         },
///         "password": {
///             "type": "string"
///         },
///         "roles": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/Role"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "password",
///         "roles",
///         "username"
///     ],
///     "additionalProperties": false
/// }
library create_user_dto;

import 'exports.dart';
part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart'; // CreateUserDto

@freezed
abstract class CreateUserDto with _$CreateUserDto {
  const CreateUserDto._();

  @jsonSerializable
  const factory CreateUserDto({
    /// username
    @JsonKey(name: CreateUserDto.usernameKey_) required String username,

    /// name
    @JsonKey(name: CreateUserDto.nameKey_) required String name,

    /// password
    @JsonKey(name: CreateUserDto.passwordKey_) required String password,

    /// roles
    @JsonKey(name: CreateUserDto.rolesKey_) required List<Role> roles,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static const String usernameKey_ = r'username';

  static const String nameKey_ = r'name';

  static const String passwordKey_ = r'password';

  static const String rolesKey_ = r'roles';
}
