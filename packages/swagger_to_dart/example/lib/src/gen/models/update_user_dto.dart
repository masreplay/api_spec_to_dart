/// UpdateUserDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "roles": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/Role"
///             },
///             "nullable": true
///         },
///         "is_active": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "new_password": {
///             "type": "string",
///             "nullable": true
///         },
///         "sale_points_id": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "uuid"
///             },
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_user_dto;

import 'exports.dart';
part 'update_user_dto.freezed.dart';
part 'update_user_dto.g.dart'; // UpdateUserDto

@freezed
abstract class UpdateUserDto with _$UpdateUserDto {
  const UpdateUserDto._();

  @jsonSerializable
  const factory UpdateUserDto({
    /// name
    @JsonKey(name: UpdateUserDto.nameKey_) String? name,

    /// roles
    @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,

    /// isActive
    @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,

    /// newPassword
    @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,

    /// salePointsId
    @JsonKey(name: UpdateUserDto.salePointsIdKey_) List<String>? salePointsId,
  }) = _UpdateUserDto;

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String rolesKey_ = r'roles';

  static const String isActiveKey_ = r'is_active';

  static const String newPasswordKey_ = r'new_password';

  static const String salePointsIdKey_ = r'sale_points_id';
}
