/// PriceListSummaryDto
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
///         "is_default": {
///             "type": "boolean"
///         },
///         "sale_point_count": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "policy_count": {
///             "type": "integer",
///             "format": "int32"
///         }
///     },
///     "type": "object",
///     "required": [
///         "enabled",
///         "id",
///         "is_default",
///         "name",
///         "policy_count",
///         "sale_point_count"
///     ],
///     "additionalProperties": false
/// }
library price_list_summary_dto;

import 'exports.dart';
part 'price_list_summary_dto.freezed.dart';
part 'price_list_summary_dto.g.dart'; // PriceListSummaryDto

@freezed
abstract class PriceListSummaryDto with _$PriceListSummaryDto {
  const PriceListSummaryDto._();

  @jsonSerializable
  const factory PriceListSummaryDto({
    /// id
    @JsonKey(name: PriceListSummaryDto.idKey_) required String id,

    /// name
    @JsonKey(name: PriceListSummaryDto.nameKey_) required String name,

    /// enabled
    @JsonKey(name: PriceListSummaryDto.enabledKey_) required bool enabled,

    /// validFrom
    @JsonKey(name: PriceListSummaryDto.validFromKey_) DateTime? validFrom,

    /// validTo
    @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,

    /// isDefault
    @JsonKey(name: PriceListSummaryDto.isDefaultKey_) required bool isDefault,

    /// salePointCount
    @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
    required int salePointCount,

    /// policyCount
    @JsonKey(name: PriceListSummaryDto.policyCountKey_)
    required int policyCount,
  }) = _PriceListSummaryDto;

  factory PriceListSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListSummaryDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String enabledKey_ = r'enabled';

  static const String validFromKey_ = r'valid_from';

  static const String validToKey_ = r'valid_to';

  static const String isDefaultKey_ = r'is_default';

  static const String salePointCountKey_ = r'sale_point_count';

  static const String policyCountKey_ = r'policy_count';
}
