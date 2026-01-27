// BaseUomKind
// {
//     "type": "string",
//     "enum": [
//         "unit",
//         "gram"
//     ]
// }

library base_uom_kind;

import 'exports.dart';
part 'base_uom_kind.g.dart';

@JsonEnum(alwaysCreate: true)
enum BaseUomKind {
  @JsonValue("unit")
  unit,
  @JsonValue("gram")
  gram;

  factory BaseUomKind.fromJson(String json) => BaseUomKind.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => BaseUomKind.values.first,
  );

  String toJson() => _$BaseUomKindEnumMap[this]!;
}
