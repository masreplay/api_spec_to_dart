/// UpdatePriceListPolicyItemDto
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
library update_price_list_policy_item_dto;

import 'exports.dart';
part 'update_price_list_policy_item_dto.freezed.dart';
part 'update_price_list_policy_item_dto.g.dart'; // UpdatePriceListPolicyItemDto

@freezed
abstract class UpdatePriceListPolicyItemDto
    with _$UpdatePriceListPolicyItemDto {
  const UpdatePriceListPolicyItemDto._();

  @jsonSerializable
  const factory UpdatePriceListPolicyItemDto({
    /// productId
    @JsonKey(name: UpdatePriceListPolicyItemDto.productIdKey_)
    required String productId,

    /// productPresentationId
    @JsonKey(name: UpdatePriceListPolicyItemDto.productPresentationIdKey_)
    required String productPresentationId,
  }) = _UpdatePriceListPolicyItemDto;

  factory UpdatePriceListPolicyItemDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceListPolicyItemDtoFromJson(json);

  static const String productIdKey_ = r'product_id';

  static const String productPresentationIdKey_ = r'product_presentation_id';
}
