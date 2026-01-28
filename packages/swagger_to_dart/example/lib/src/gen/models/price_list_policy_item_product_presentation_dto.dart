/// PriceListPolicyItemProductPresentationDto
/// {
///     "properties": {
///         "product_presentation_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "product_presentation_name": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "product_presentation_id",
///         "product_presentation_name"
///     ],
///     "additionalProperties": false
/// }
library price_list_policy_item_product_presentation_dto;

import 'exports.dart';
part 'price_list_policy_item_product_presentation_dto.freezed.dart';
part 'price_list_policy_item_product_presentation_dto.g.dart'; // PriceListPolicyItemProductPresentationDto

@freezed
abstract class PriceListPolicyItemProductPresentationDto
    with _$PriceListPolicyItemProductPresentationDto {
  const PriceListPolicyItemProductPresentationDto._();

  @jsonSerializable
  const factory PriceListPolicyItemProductPresentationDto({
    /// productPresentationId
    @JsonKey(
      name: PriceListPolicyItemProductPresentationDto.productPresentationIdKey_,
    )
    required String productPresentationId,

    /// productPresentationName
    @JsonKey(
      name:
          PriceListPolicyItemProductPresentationDto.productPresentationNameKey_,
    )
    required String productPresentationName,
  }) = _PriceListPolicyItemProductPresentationDto;

  factory PriceListPolicyItemProductPresentationDto.fromJson(
    Map<String, dynamic> json,
  ) => _$PriceListPolicyItemProductPresentationDtoFromJson(json);

  static const String productPresentationIdKey_ = r'product_presentation_id';

  static const String productPresentationNameKey_ =
      r'product_presentation_name';
}
