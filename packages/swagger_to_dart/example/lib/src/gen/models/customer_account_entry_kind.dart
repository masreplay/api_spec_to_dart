// CustomerAccountEntryKind
// {
//     "type": "string",
//     "enum": [
//         "sale",
//         "payment",
//         "creditNote",
//         "debitNote",
//         "other"
//     ]
// }

library customer_account_entry_kind;

import 'exports.dart';
part 'customer_account_entry_kind.g.dart';

@JsonEnum(alwaysCreate: true)
enum CustomerAccountEntryKind {
  @JsonValue("sale")
  sale,
  @JsonValue("payment")
  payment,
  @JsonValue("creditNote")
  creditNote,
  @JsonValue("debitNote")
  debitNote,
  @JsonValue("other")
  other;

  factory CustomerAccountEntryKind.fromJson(String json) =>
      CustomerAccountEntryKind.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => CustomerAccountEntryKind.values.first,
      );

  String toJson() => _$CustomerAccountEntryKindEnumMap[this]!;
}
