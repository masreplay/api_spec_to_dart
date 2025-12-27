/// CreateOrderLine
/// {
///     "properties": {
///         "product_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "quantity": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "type": {
///             "type": "string",
///             "default": "create"
///         }
///     },
///     "type": "object",
///     "required": [
///         "product_id",
///         "quantity",
///         "type"
///     ],
///     "title": "CreateOrderLine",
///     "additionalProperties": false
/// }
library create_order_line;

import 'exports.dart';
part 'create_order_line.freezed.dart';
part 'create_order_line.g.dart'; // CreateOrderLine

@freezed
abstract class CreateOrderLine with _$CreateOrderLine {
  const CreateOrderLine._();

  @jsonSerializable
  const factory CreateOrderLine({
    /// productId
    @JsonKey(name: CreateOrderLine.productIdKey_) required String productId,

    /// quantity
    @JsonKey(name: CreateOrderLine.quantityKey_) required int quantity,

    /// salePrice
    @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,

    /// type
    @Default('create') @JsonKey(name: CreateOrderLine.typeKey_) String type,
  }) = _CreateOrderLine;

  factory CreateOrderLine.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderLineFromJson(json);

  static const String productIdKey_ = r'product_id';

  static const String quantityKey_ = r'quantity';

  static const String salePriceKey_ = r'sale_price';

  static const String typeKey_ = r'type';
}
