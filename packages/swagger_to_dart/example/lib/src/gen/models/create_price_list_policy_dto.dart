/// CreatePriceListPolicyDto
/// {
///     "properties": {
///         "policy_type": {
///             "$ref": "#/components/schemas/PriceListPolicyPolicyType"
///         },
///         "policy_type_value": {
///             "type": "number",
///             "format": "double"
///         },
///         "notes": {
///             "type": "string",
///             "nullable": true
///         },
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CreatePriceListPolicyItemDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "items",
///         "policy_type",
///         "policy_type_value"
///     ],
///     "additionalProperties": false
/// }
library create_price_list_policy_dto;

import 'exports.dart';
part 'create_price_list_policy_dto.freezed.dart';
part 'create_price_list_policy_dto.g.dart'; // CreatePriceListPolicyDto

@freezed
abstract class CreatePriceListPolicyDto with _$CreatePriceListPolicyDto {
  const CreatePriceListPolicyDto._();

  @jsonSerializable
  const factory CreatePriceListPolicyDto({
    /// policyType
    @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
    required PriceListPolicyPolicyType policyType,

    /// policyTypeValue
    @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
    required double policyTypeValue,

    /// notes
    @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,

    /// items
    @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
    required List<CreatePriceListPolicyItemDto> items,
  }) = _CreatePriceListPolicyDto;

  factory CreatePriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListPolicyDtoFromJson(json);

  static const String policyTypeKey_ = r'policy_type';

  static const String policyTypeValueKey_ = r'policy_type_value';

  static const String notesKey_ = r'notes';

  static const String itemsKey_ = r'items';
}
