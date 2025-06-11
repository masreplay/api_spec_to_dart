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
  @JsonValue('light')
  light,
  @JsonValue('dark')
  dark,
  @JsonValue('system')
  system;

  factory Mode.fromJson(Object json) =>
      values.firstWhere((e) => e.toJson() == json, orElse: () => values.first);

  Object toJson() => _$ModeEnumMap[this]!;
}
