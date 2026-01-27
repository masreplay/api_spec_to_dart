// Role
// {
//     "type": "string",
//     "enum": [
//         "admin",
//         "userAdministrator"
//     ]
// }

library role;

import 'exports.dart';
part 'role.g.dart';

@JsonEnum(alwaysCreate: true)
enum Role {
  @JsonValue("admin")
  admin,
  @JsonValue("userAdministrator")
  userAdministrator;

  factory Role.fromJson(String json) => Role.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => Role.values.first,
  );

  String toJson() => _$RoleEnumMap[this]!;
}
