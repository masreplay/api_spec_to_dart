/// UpdatePriceListPolicyDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "policy_type": {
///             "oneOf": [
///                 {
///                     "$ref": "#/components/schemas/PriceListPolicyPolicyType"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ]
///         },
///         "policy_type_value": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "enabled": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "notes": {
///             "type": "string",
///             "nullable": true
///         },
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/UpdatePriceListPolicyItemDto"
///             },
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_price_list_policy_dto;

import 'exports.dart';
part 'update_price_list_policy_dto.freezed.dart';
part 'update_price_list_policy_dto.g.dart'; // UpdatePriceListPolicyDto

@freezed
abstract class UpdatePriceListPolicyDto with _$UpdatePriceListPolicyDto {
  const UpdatePriceListPolicyDto._();

  @jsonSerializable
  const factory UpdatePriceListPolicyDto({
    /// id
    @JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,

    /// policyType
    @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
    PriceListPolicyPolicyType? policyType,

    /// policyTypeValue
    @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
    double? policyTypeValue,

    /// enabled
    @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,

    /// notes
    @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,

    /// items
    @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
    List<UpdatePriceListPolicyItemDto>? items,
  }) = _UpdatePriceListPolicyDto;

  factory UpdatePriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceListPolicyDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String policyTypeKey_ = r'policy_type';

  static const String policyTypeValueKey_ = r'policy_type_value';

  static const String enabledKey_ = r'enabled';

  static const String notesKey_ = r'notes';

  static const String itemsKey_ = r'items';
}
