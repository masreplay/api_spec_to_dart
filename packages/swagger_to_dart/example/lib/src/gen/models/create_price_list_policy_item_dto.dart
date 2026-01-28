/// CreatePriceListPolicyItemDto
/// {
///     "properties": {
///         "product_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "product_presentation_id": {
///             "type": "string",
///             "format": "uuid"
///         }
///     },
///     "type": "object",
///     "required": [
///         "product_id",
///         "product_presentation_id"
///     ],
///     "additionalProperties": false
/// }
library create_price_list_policy_item_dto;

import 'exports.dart';
part 'create_price_list_policy_item_dto.freezed.dart';
part 'create_price_list_policy_item_dto.g.dart'; // CreatePriceListPolicyItemDto

@freezed
abstract class CreatePriceListPolicyItemDto
    with _$CreatePriceListPolicyItemDto {
  const CreatePriceListPolicyItemDto._();

  @jsonSerializable
  const factory CreatePriceListPolicyItemDto({
    /// productId
    @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
    required String productId,

    /// productPresentationId
    @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
    required String productPresentationId,
  }) = _CreatePriceListPolicyItemDto;

  factory CreatePriceListPolicyItemDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListPolicyItemDtoFromJson(json);

  static const String productIdKey_ = r'product_id';

  static const String productPresentationIdKey_ = r'product_presentation_id';
}
