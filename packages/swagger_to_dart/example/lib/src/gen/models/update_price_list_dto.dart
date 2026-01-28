/// UpdatePriceListDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "enabled": {
///             "type": "boolean",
///             "nullable": true
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
///         "sale_point_ids": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "uuid"
///             },
///             "nullable": true
///         },
///         "policies": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/UpdatePriceListPolicyDto"
///             },
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_price_list_dto;

import 'exports.dart';
part 'update_price_list_dto.freezed.dart';
part 'update_price_list_dto.g.dart'; // UpdatePriceListDto

@freezed
abstract class UpdatePriceListDto with _$UpdatePriceListDto {
  const UpdatePriceListDto._();

  @jsonSerializable
  const factory UpdatePriceListDto({
    /// name
    @JsonKey(name: UpdatePriceListDto.nameKey_) String? name,

    /// enabled
    @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,

    /// validFrom
    @JsonKey(name: UpdatePriceListDto.validFromKey_) DateTime? validFrom,

    /// validTo
    @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,

    /// salePointIds
    @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
    List<String>? salePointIds,

    /// policies
    @JsonKey(name: UpdatePriceListDto.policiesKey_)
    List<UpdatePriceListPolicyDto>? policies,
  }) = _UpdatePriceListDto;

  factory UpdatePriceListDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceListDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String enabledKey_ = r'enabled';

  static const String validFromKey_ = r'valid_from';

  static const String validToKey_ = r'valid_to';

  static const String salePointIdsKey_ = r'sale_point_ids';

  static const String policiesKey_ = r'policies';
}
