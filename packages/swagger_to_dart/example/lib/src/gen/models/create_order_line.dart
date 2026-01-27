/// CreateOrderLine
/// {
///     "properties": {
///         "product_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "presentation_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "variant_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
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
///         "presentation_id",
///         "product_id",
///         "quantity",
///         "type"
///     ],
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

    /// presentationId
    @JsonKey(name: CreateOrderLine.presentationIdKey_)
    required String presentationId,

    /// variantId
    @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,

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

  static const String presentationIdKey_ = r'presentation_id';

  static const String variantIdKey_ = r'variant_id';

  static const String quantityKey_ = r'quantity';

  static const String salePriceKey_ = r'sale_price';

  static const String typeKey_ = r'type';
}
