// Mode
// {
//     "properties": {},
//     "type": "object",
//     "enum": [
//         "light",
//         "dark",
//         "system"
//     ]
// }

library;

import 'exports.dart';
part 'mode.g.dart';

@JsonEnum(alwaysCreate: true)
enum Mode {
  @JsonValue("light")
  light,
  @JsonValue("dark")
  dark,
  @JsonValue("system")
  system;

  String toJson() => _$ModeEnumMap[this]!;
}
