/// UpdateOrderCommand
/// {
///     "properties": {
///         "customer_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "lines": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/OrderLineChange"
///             },
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_order_command;

import 'exports.dart';
part 'update_order_command.freezed.dart';
part 'update_order_command.g.dart'; // UpdateOrderCommand

@freezed
abstract class UpdateOrderCommand with _$UpdateOrderCommand {
  const UpdateOrderCommand._();

  @jsonSerializable
  const factory UpdateOrderCommand({
    /// customerId
    @JsonKey(name: UpdateOrderCommand.customerIdKey_) String? customerId,

    /// lines
    @JsonKey(name: UpdateOrderCommand.linesKey_) List<OrderLineChange>? lines,
  }) = _UpdateOrderCommand;

  factory UpdateOrderCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderCommandFromJson(json);

  static const String customerIdKey_ = r'customer_id';

  static const String linesKey_ = r'lines';
}
