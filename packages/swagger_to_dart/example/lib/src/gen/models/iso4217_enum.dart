// Iso4217Enum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'iso4217_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum Iso4217Enum {
  @JsonValue("HI")
  hi;

  String toJson() => _$Iso4217EnumEnumMap[this]!;
}
