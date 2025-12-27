/// UpdateOrderLine
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "quantity": {
///             "type": "integer",
///             "format": "int32",
///             "nullable": true
///         },
///         "sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "type": {
///             "type": "string",
///             "default": "update"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "type"
///     ],
///     "title": "UpdateOrderLine",
///     "additionalProperties": false
/// }
library update_order_line;

import 'exports.dart';
part 'update_order_line.freezed.dart';
part 'update_order_line.g.dart'; // UpdateOrderLine

@freezed
abstract class UpdateOrderLine with _$UpdateOrderLine {
  const UpdateOrderLine._();

  @jsonSerializable
  const factory UpdateOrderLine({
    /// id
    @JsonKey(name: UpdateOrderLine.idKey_) required String id,

    /// quantity
    @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,

    /// salePrice
    @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,

    /// type
    @Default('update') @JsonKey(name: UpdateOrderLine.typeKey_) String type,
  }) = _UpdateOrderLine;

  factory UpdateOrderLine.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderLineFromJson(json);

  static const String idKey_ = r'id';

  static const String quantityKey_ = r'quantity';

  static const String salePriceKey_ = r'sale_price';

  static const String typeKey_ = r'type';
}
