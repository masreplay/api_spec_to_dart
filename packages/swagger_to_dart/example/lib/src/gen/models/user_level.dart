// UserLevel
// {
//     "type": "string",
//     "enum": [
//         "basic",
//         "premium",
//         "admin"
//     ],
//     "title": "UserLevel"
// }

library;

import 'exports.dart';
part 'user_level.g.dart';

@JsonEnum(alwaysCreate: true)
enum UserLevel {
  @JsonValue('basic')
  basic,
  @JsonValue('premium')
  premium,
  @JsonValue('admin')
  admin;

  factory UserLevel.fromJson(Object json) =>
      values.firstWhere((e) => e.toJson() == json, orElse: () => values.first);

  Object toJson() => _$UserLevelEnumMap[this]!;
}
