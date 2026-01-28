/// PriceListDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         },
///         "enabled": {
///             "type": "boolean"
///         },
///         "is_default": {
///             "type": "boolean"
///         },
///         "valid_from": {
///             "type": "string",
///             "format": "date-time",
///             "nullable": true
///         },
///         "valid_to": {
///             "type": "string",
///             "format": "date-time",
///             "nullable": true
///         },
///         "sale_points": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/PriceListSalePointDto"
///             }
///         },
///         "policies": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/PriceListPolicyDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "enabled",
///         "id",
///         "is_default",
///         "name",
///         "policies",
///         "sale_points"
///     ],
///     "additionalProperties": false
/// }
library price_list_dto;

import 'exports.dart';
part 'price_list_dto.freezed.dart';
part 'price_list_dto.g.dart'; // PriceListDto

@freezed
abstract class PriceListDto with _$PriceListDto {
  const PriceListDto._();

  @jsonSerializable
  const factory PriceListDto({
    /// id
    @JsonKey(name: PriceListDto.idKey_) required String id,

    /// name
    @JsonKey(name: PriceListDto.nameKey_) required String name,

    /// enabled
    @JsonKey(name: PriceListDto.enabledKey_) required bool enabled,

    /// isDefault
    @JsonKey(name: PriceListDto.isDefaultKey_) required bool isDefault,

    /// validFrom
    @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,

    /// validTo
    @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,

    /// salePoints
    @JsonKey(name: PriceListDto.salePointsKey_)
    required List<PriceListSalePointDto> salePoints,

    /// policies
    @JsonKey(name: PriceListDto.policiesKey_)
    required List<PriceListPolicyDto> policies,
  }) = _PriceListDto;

  factory PriceListDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String enabledKey_ = r'enabled';

  static const String isDefaultKey_ = r'is_default';

  static const String validFromKey_ = r'valid_from';

  static const String validToKey_ = r'valid_to';

  static const String salePointsKey_ = r'sale_points';

  static const String policiesKey_ = r'policies';
}
