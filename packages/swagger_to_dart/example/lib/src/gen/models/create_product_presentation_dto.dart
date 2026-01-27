/// CreateProductPresentationDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
///         },
///         "quantity_multiplier": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "is_default": {
///             "type": "boolean"
///         }
///     },
///     "type": "object",
///     "required": [
///         "is_default",
///         "name",
///         "quantity_multiplier"
///     ],
///     "additionalProperties": false
/// }
library create_product_presentation_dto;

import 'exports.dart';
part 'create_product_presentation_dto.freezed.dart';
part 'create_product_presentation_dto.g.dart'; // CreateProductPresentationDto

@freezed
abstract class CreateProductPresentationDto
    with _$CreateProductPresentationDto {
  const CreateProductPresentationDto._();

  @jsonSerializable
  const factory CreateProductPresentationDto({
    /// name
    @JsonKey(name: CreateProductPresentationDto.nameKey_) required String name,

    /// quantityMultiplier
    @JsonKey(name: CreateProductPresentationDto.quantityMultiplierKey_)
    required int quantityMultiplier,

    /// isDefault
    @JsonKey(name: CreateProductPresentationDto.isDefaultKey_)
    required bool isDefault,
  }) = _CreateProductPresentationDto;

  factory CreateProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductPresentationDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String quantityMultiplierKey_ = r'quantity_multiplier';

  static const String isDefaultKey_ = r'is_default';
}
