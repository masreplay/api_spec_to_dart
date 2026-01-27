// ChangeType
// {
//     "type": "string",
//     "enum": [
//         "create",
//         "delete",
//         "update"
//     ]
// }

library change_type;

import 'exports.dart';
part 'change_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum ChangeType {
  @JsonValue("create")
  create,
  @JsonValue("delete")
  delete,
  @JsonValue("update")
  update;

  factory ChangeType.fromJson(String json) => ChangeType.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => ChangeType.values.first,
  );

  String toJson() => _$ChangeTypeEnumMap[this]!;
}
