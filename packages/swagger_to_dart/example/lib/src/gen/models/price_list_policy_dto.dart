/// PriceListPolicyDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "policy_type": {
///             "$ref": "#/components/schemas/PriceListPolicyPolicyType"
///         },
///         "policy_type_value": {
///             "type": "number",
///             "format": "double"
///         },
///         "enabled": {
///             "type": "boolean"
///         },
///         "notes": {
///             "type": "string",
///             "nullable": true
///         },
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/PriceListPolicyItemDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "enabled",
///         "id",
///         "items",
///         "policy_type",
///         "policy_type_value"
///     ],
///     "additionalProperties": false
/// }
library price_list_policy_dto;

import 'exports.dart';
part 'price_list_policy_dto.freezed.dart';
part 'price_list_policy_dto.g.dart'; // PriceListPolicyDto

@freezed
abstract class PriceListPolicyDto with _$PriceListPolicyDto {
  const PriceListPolicyDto._();

  @jsonSerializable
  const factory PriceListPolicyDto({
    /// id
    @JsonKey(name: PriceListPolicyDto.idKey_) required String id,

    /// policyType
    @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
    required PriceListPolicyPolicyType policyType,

    /// policyTypeValue
    @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
    required double policyTypeValue,

    /// enabled
    @JsonKey(name: PriceListPolicyDto.enabledKey_) required bool enabled,

    /// notes
    @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,

    /// items
    @JsonKey(name: PriceListPolicyDto.itemsKey_)
    required List<PriceListPolicyItemDto> items,
  }) = _PriceListPolicyDto;

  factory PriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListPolicyDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String policyTypeKey_ = r'policy_type';

  static const String policyTypeValueKey_ = r'policy_type_value';

  static const String enabledKey_ = r'enabled';

  static const String notesKey_ = r'notes';

  static const String itemsKey_ = r'items';
}
