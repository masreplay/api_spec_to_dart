/// UserDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         },
///         "username": {
///             "type": "string"
///         },
///         "is_active": {
///             "type": "boolean"
///         },
///         "roles": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/Role"
///             }
///         },
///         "sale_points": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/SalePointRef"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "is_active",
///         "name",
///         "roles",
///         "sale_points",
///         "username"
///     ],
///     "additionalProperties": false
/// }
library user_dto;

import 'exports.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart'; // UserDto

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  @jsonSerializable
  const factory UserDto({
    /// id
    @JsonKey(name: UserDto.idKey_) required String id,

    /// name
    @JsonKey(name: UserDto.nameKey_) required String name,

    /// username
    @JsonKey(name: UserDto.usernameKey_) required String username,

    /// isActive
    @JsonKey(name: UserDto.isActiveKey_) required bool isActive,

    /// roles
    @JsonKey(name: UserDto.rolesKey_) required List<Role> roles,

    /// salePoints
    @JsonKey(name: UserDto.salePointsKey_)
    required List<SalePointRef> salePoints,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String usernameKey_ = r'username';

  static const String isActiveKey_ = r'is_active';

  static const String rolesKey_ = r'roles';

  static const String salePointsKey_ = r'sale_points';
}
