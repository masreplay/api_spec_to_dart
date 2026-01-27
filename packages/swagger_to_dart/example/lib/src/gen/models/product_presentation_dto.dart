/// ProductPresentationDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         },
///         "quantity_multiplier": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "is_default": {
///             "type": "boolean"
///         },
///         "sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "is_default",
///         "name",
///         "quantity_multiplier"
///     ],
///     "additionalProperties": false
/// }
library product_presentation_dto;

import 'exports.dart';
part 'product_presentation_dto.freezed.dart';
part 'product_presentation_dto.g.dart'; // ProductPresentationDto

@freezed
abstract class ProductPresentationDto with _$ProductPresentationDto {
  const ProductPresentationDto._();

  @jsonSerializable
  const factory ProductPresentationDto({
    /// id
    @JsonKey(name: ProductPresentationDto.idKey_) required String id,

    /// name
    @JsonKey(name: ProductPresentationDto.nameKey_) required String name,

    /// quantityMultiplier
    @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
    required int quantityMultiplier,

    /// isDefault
    @JsonKey(name: ProductPresentationDto.isDefaultKey_)
    required bool isDefault,

    /// salePrice
    @JsonKey(name: ProductPresentationDto.salePriceKey_) double? salePrice,
  }) = _ProductPresentationDto;

  factory ProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$ProductPresentationDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String quantityMultiplierKey_ = r'quantity_multiplier';

  static const String isDefaultKey_ = r'is_default';

  static const String salePriceKey_ = r'sale_price';
}
