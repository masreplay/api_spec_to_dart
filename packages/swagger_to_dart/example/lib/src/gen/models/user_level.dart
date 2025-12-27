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

library user_level;

import 'exports.dart';
part 'user_level.g.dart';

@JsonEnum(alwaysCreate: true)
enum UserLevel {
  @JsonValue("basic")
  basic,
  @JsonValue("premium")
  premium,
  @JsonValue("admin")
  admin;

  factory UserLevel.fromJson(String json) => UserLevel.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => UserLevel.values.first,
  );

  String toJson() => _$UserLevelEnumMap[this]!;
}
