/// OrderLineChange
/// {
///     "oneOf": [
///         {
///             "$ref": "#/components/schemas/CreateOrderLine"
///         },
///         {
///             "$ref": "#/components/schemas/UpdateOrderLine"
///         },
///         {
///             "$ref": "#/components/schemas/DeleteOrderLine"
///         }
///     ],
///     "title": "OrderLineChange",
///     "discriminator": {
///         "propertyName": "type",
///         "mapping": {
///             "create": "#/components/schemas/CreateOrderLine",
///             "update": "#/components/schemas/UpdateOrderLine",
///             "delete": "#/components/schemas/DeleteOrderLine"
///         }
///     },
///     "runtimeType": "oneOf"
/// }
library order_line_change;

import 'exports.dart';
part 'order_line_change.freezed.dart';
part 'order_line_change.g.dart'; // OrderLineChange

@Freezed(fallbackUnion: r"fallback", unionKey: r"type")
sealed class OrderLineChange with _$OrderLineChange {
  const OrderLineChange._();

  @jsonSerializable
  @FreezedUnionValue(r"create")
  const factory OrderLineChange.create(CreateOrderLine value) =
      OrderLineChangeCreate;

  @jsonSerializable
  @FreezedUnionValue(r"update")
  const factory OrderLineChange.update(UpdateOrderLine value) =
      OrderLineChangeUpdate;

  @jsonSerializable
  @FreezedUnionValue(r"delete")
  const factory OrderLineChange.delete(DeleteOrderLine value) =
      OrderLineChangeDelete;

  @jsonSerializable
  @FreezedUnionValue(r"fallback")
  const factory OrderLineChange.fallback(Map<String, dynamic>? value) =
      OrderLineChangeFallback;

  factory OrderLineChange.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeFromJson(json);
}
