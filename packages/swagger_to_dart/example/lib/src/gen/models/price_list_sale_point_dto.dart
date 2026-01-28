/// PriceListSalePointDto
/// {
///     "properties": {
///         "sale_point_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "sale_point_name": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "sale_point_id",
///         "sale_point_name"
///     ],
///     "additionalProperties": false
/// }
library price_list_sale_point_dto;

import 'exports.dart';
part 'price_list_sale_point_dto.freezed.dart';
part 'price_list_sale_point_dto.g.dart'; // PriceListSalePointDto

@freezed
abstract class PriceListSalePointDto with _$PriceListSalePointDto {
  const PriceListSalePointDto._();

  @jsonSerializable
  const factory PriceListSalePointDto({
    /// salePointId
    @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
    required String salePointId,

    /// salePointName
    @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
    required String salePointName,
  }) = _PriceListSalePointDto;

  factory PriceListSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListSalePointDtoFromJson(json);

  static const String salePointIdKey_ = r'sale_point_id';

  static const String salePointNameKey_ = r'sale_point_name';
}
