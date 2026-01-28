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
  const factory OrderLineChange.create({
    /// productId
    @JsonKey(name: OrderLineChange.productIdKey_) required String productId,

    /// presentationId
    @JsonKey(name: OrderLineChange.presentationIdKey_)
    required String presentationId,

    /// variantId
    @JsonKey(name: OrderLineChange.variantIdKey_) String? variantId,

    /// quantity
    @JsonKey(name: OrderLineChange.quantityKey_) required int quantity,

    /// salePrice
    @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,

    /// type
    @Default('create') @JsonKey(name: OrderLineChange.typeKey_) String type,
  }) = OrderLineChangeCreate;

  @jsonSerializable
  @FreezedUnionValue(r"update")
  const factory OrderLineChange.update({
    /// id
    @JsonKey(name: OrderLineChange.idKey_) required String id,

    /// quantity
    @JsonKey(name: OrderLineChange.quantityKey_) int? quantity,

    /// salePrice
    @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,

    /// type
    @Default('update') @JsonKey(name: OrderLineChange.typeKey_) String type,
  }) = OrderLineChangeUpdate;

  @jsonSerializable
  @FreezedUnionValue(r"delete")
  const factory OrderLineChange.delete({
    /// id
    @JsonKey(name: OrderLineChange.idKey_) required String id,

    /// type
    @Default('delete') @JsonKey(name: OrderLineChange.typeKey_) String type,
  }) = OrderLineChangeDelete;

  @jsonSerializable
  @FreezedUnionValue(r"fallback")
  const factory OrderLineChange.fallback({Map<String, dynamic>? json}) =
      OrderLineChangeFallback;

  factory OrderLineChange.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeFromJson(json);

  static const String productIdKey_ = r'product_id';

  static const String presentationIdKey_ = r'presentation_id';

  static const String variantIdKey_ = r'variant_id';

  static const String quantityKey_ = r'quantity';

  static const String salePriceKey_ = r'sale_price';

  static const String typeKey_ = r'type';

  static const String idKey_ = r'id';
}
