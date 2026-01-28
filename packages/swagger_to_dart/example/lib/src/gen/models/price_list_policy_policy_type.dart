// PriceListPolicyPolicyType
// {
//     "type": "string",
//     "enum": [
//         "setMarkupPercentage",
//         "adjustPercentage",
//         "adjustFixed"
//     ]
// }

library price_list_policy_policy_type;

import 'exports.dart';
part 'price_list_policy_policy_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum PriceListPolicyPolicyType {
  @JsonValue("setMarkupPercentage")
  setMarkupPercentage,
  @JsonValue("adjustPercentage")
  adjustPercentage,
  @JsonValue("adjustFixed")
  adjustFixed;

  factory PriceListPolicyPolicyType.fromJson(String json) =>
      PriceListPolicyPolicyType.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => PriceListPolicyPolicyType.values.first,
      );

  String toJson() => _$PriceListPolicyPolicyTypeEnumMap[this]!;
}
