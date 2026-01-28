/// UpdateSalePointDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "users_id": {
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
library update_sale_point_dto;

import 'exports.dart';
part 'update_sale_point_dto.freezed.dart';
part 'update_sale_point_dto.g.dart'; // UpdateSalePointDto

@freezed
abstract class UpdateSalePointDto with _$UpdateSalePointDto {
  const UpdateSalePointDto._();

  @jsonSerializable
  const factory UpdateSalePointDto({
    /// name
    @JsonKey(name: UpdateSalePointDto.nameKey_) String? name,

    /// usersId
    @JsonKey(name: UpdateSalePointDto.usersIdKey_) List<String>? usersId,
  }) = _UpdateSalePointDto;

  factory UpdateSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalePointDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String usersIdKey_ = r'users_id';
}
