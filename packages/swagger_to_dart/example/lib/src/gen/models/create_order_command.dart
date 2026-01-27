/// CreateOrderCommand
/// {
///     "properties": {
///         "sale_point_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "customer_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "user_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "lines": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CreateOrderLine"
///             }
///         },
///         "is_paid": {
///             "type": "boolean"
///         }
///     },
///     "type": "object",
///     "required": [
///         "customer_id",
///         "is_paid",
///         "lines",
///         "sale_point_id",
///         "user_id"
///     ],
///     "additionalProperties": false
/// }
library create_order_command;

import 'exports.dart';
part 'create_order_command.freezed.dart';
part 'create_order_command.g.dart'; // CreateOrderCommand

@freezed
abstract class CreateOrderCommand with _$CreateOrderCommand {
  const CreateOrderCommand._();

  @jsonSerializable
  const factory CreateOrderCommand({
    /// salePointId
    @JsonKey(name: CreateOrderCommand.salePointIdKey_)
    required String salePointId,

    /// customerId
    @JsonKey(name: CreateOrderCommand.customerIdKey_)
    required String customerId,

    /// userId
    @JsonKey(name: CreateOrderCommand.userIdKey_) required String userId,

    /// lines
    @JsonKey(name: CreateOrderCommand.linesKey_)
    required List<CreateOrderLine> lines,

    /// isPaid
    @JsonKey(name: CreateOrderCommand.isPaidKey_) required bool isPaid,
  }) = _CreateOrderCommand;

  factory CreateOrderCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderCommandFromJson(json);

  static const String salePointIdKey_ = r'sale_point_id';

  static const String customerIdKey_ = r'customer_id';

  static const String userIdKey_ = r'user_id';

  static const String linesKey_ = r'lines';

  static const String isPaidKey_ = r'is_paid';
}
