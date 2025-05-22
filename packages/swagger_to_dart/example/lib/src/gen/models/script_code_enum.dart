// ScriptCodeEnum
// {
//     "properties": {},
//     "type": "Hello",
//     "enum": [
//         "HI"
//     ]
// }

library;

import 'exports.dart';
part 'script_code_enum.g.dart';

@JsonEnum(alwaysCreate: true)
enum ScriptCodeEnum {
  @JsonValue("HI")
  hi;

  String toJson() => _$ScriptCodeEnumEnumMap[this]!;
}
