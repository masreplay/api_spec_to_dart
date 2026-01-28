// OrderStatus
// {
//     "type": "string",
//     "enum": [
//         "created",
//         "closed",
//         "deleted"
//     ]
// }

library order_status;

import 'exports.dart';
part 'order_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum OrderStatus {
  @JsonValue("created")
  created,
  @JsonValue("closed")
  closed,
  @JsonValue("deleted")
  deleted;

  factory OrderStatus.fromJson(String json) => OrderStatus.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => OrderStatus.values.first,
  );

  String toJson() => _$OrderStatusEnumMap[this]!;
}
