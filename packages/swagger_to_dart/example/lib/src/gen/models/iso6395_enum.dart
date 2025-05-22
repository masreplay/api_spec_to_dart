// Iso6395Enum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'iso6395_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum Iso6395Enum {
  @JsonValue("HI")
  hi;

  String toJson() => _$Iso6395EnumEnumMap[this]!;
}
