// ModeEnum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "light",
//         "dark",
//         "system"
//     ]
// }

library;

import 'exports.dart';
part 'mode_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum ModeEnum {
  @JsonValue("light")
  light,
  @JsonValue("dark")
  dark,
  @JsonValue("system")
  system;

  String toJson() => _$ModeEnumEnumMap[this]!;
}
