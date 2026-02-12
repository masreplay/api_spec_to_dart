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

library mode;

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

  factory Mode.fromJson(String json) => Mode.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => Mode.values.first,
  );

  String toJson() => _$ModeEnumMap[this]!;
}
