// DocumentKind
// {
//     "type": "string",
//     "enum": [
//         "order",
//         "sale"
//     ]
// }

library document_kind;

import 'exports.dart';
part 'document_kind.g.dart';

@JsonEnum(alwaysCreate: true)
enum DocumentKind {
  @JsonValue("order")
  order,
  @JsonValue("sale")
  sale;

  factory DocumentKind.fromJson(String json) => DocumentKind.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => DocumentKind.values.first,
  );

  String toJson() => _$DocumentKindEnumMap[this]!;
}
