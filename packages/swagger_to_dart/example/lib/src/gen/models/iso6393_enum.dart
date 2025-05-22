// Iso6393Enum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'iso6393_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum Iso6393Enum {
  @JsonValue("HI")
  hi;

  String toJson() => _$Iso6393EnumEnumMap[this]!;
}
