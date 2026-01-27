/// UpdateProductPresentationDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "quantity_multiplier": {
///             "type": "integer",
///             "format": "int32",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_product_presentation_dto;

import 'exports.dart';
part 'update_product_presentation_dto.freezed.dart';
part 'update_product_presentation_dto.g.dart'; // UpdateProductPresentationDto

@freezed
abstract class UpdateProductPresentationDto
    with _$UpdateProductPresentationDto {
  const UpdateProductPresentationDto._();

  @jsonSerializable
  const factory UpdateProductPresentationDto({
    /// id
    @JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,

    /// name
    @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,

    /// quantityMultiplier
    @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
    int? quantityMultiplier,
  }) = _UpdateProductPresentationDto;

  factory UpdateProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductPresentationDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String quantityMultiplierKey_ = r'quantity_multiplier';
}
