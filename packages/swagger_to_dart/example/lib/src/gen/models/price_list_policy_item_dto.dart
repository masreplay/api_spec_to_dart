/// PriceListPolicyItemDto
/// {
///     "properties": {
///         "product_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "product_name": {
///             "type": "string"
///         },
///         "product_presentations": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/PriceListPolicyItemProductPresentationDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "product_id",
///         "product_name",
///         "product_presentations"
///     ],
///     "additionalProperties": false
/// }
library price_list_policy_item_dto;

import 'exports.dart';
part 'price_list_policy_item_dto.freezed.dart';
part 'price_list_policy_item_dto.g.dart'; // PriceListPolicyItemDto

@freezed
abstract class PriceListPolicyItemDto with _$PriceListPolicyItemDto {
  const PriceListPolicyItemDto._();

  @jsonSerializable
  const factory PriceListPolicyItemDto({
    /// productId
    @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
    required String productId,

    /// productName
    @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
    required String productName,

    /// productPresentations
    @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
    required List<PriceListPolicyItemProductPresentationDto>
    productPresentations,
  }) = _PriceListPolicyItemDto;

  factory PriceListPolicyItemDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListPolicyItemDtoFromJson(json);

  static const String productIdKey_ = r'product_id';

  static const String productNameKey_ = r'product_name';

  static const String productPresentationsKey_ = r'product_presentations';
}
