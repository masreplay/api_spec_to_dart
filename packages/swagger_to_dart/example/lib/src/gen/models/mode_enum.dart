// ModeEnum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'mode_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum ModeEnum {
  @JsonValue("HI")
  hi;

  String toJson() => _$ModeEnumEnumMap[this]!;
}
