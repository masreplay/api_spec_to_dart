/// SalePointDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         },
///         "number": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "is_default": {
///             "type": "boolean"
///         },
///         "users": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/UserRef"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "is_default",
///         "name",
///         "number",
///         "users"
///     ],
///     "additionalProperties": false
/// }
library sale_point_dto;

import 'exports.dart';
part 'sale_point_dto.freezed.dart';
part 'sale_point_dto.g.dart'; // SalePointDto

@freezed
abstract class SalePointDto with _$SalePointDto {
  const SalePointDto._();

  @jsonSerializable
  const factory SalePointDto({
    /// id
    @JsonKey(name: SalePointDto.idKey_) required String id,

    /// name
    @JsonKey(name: SalePointDto.nameKey_) required String name,

    /// number
    @JsonKey(name: SalePointDto.numberKey_) required int number,

    /// isDefault
    @JsonKey(name: SalePointDto.isDefaultKey_) required bool isDefault,

    /// users
    @JsonKey(name: SalePointDto.usersKey_) required List<UserRef> users,
  }) = _SalePointDto;

  factory SalePointDto.fromJson(Map<String, dynamic> json) =>
      _$SalePointDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String numberKey_ = r'number';

  static const String isDefaultKey_ = r'is_default';

  static const String usersKey_ = r'users';
}
