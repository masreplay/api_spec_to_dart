// TimezoneEnum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'timezone_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum TimezoneEnum {
  @JsonValue("HI")
  hi;

  String toJson() => _$TimezoneEnumEnumMap[this]!;
}
