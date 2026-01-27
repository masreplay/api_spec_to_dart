/// OrderLineDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "product_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "product_name": {
///             "type": "string"
///         },
///         "variant_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "variant_name": {
///             "type": "string",
///             "nullable": true
///         },
///         "presentation_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "presentation_name": {
///             "type": "string"
///         },
///         "presentation_quantity_multiplier": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "quantity": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "unit_price_excluding_tax": {
///             "type": "number",
///             "format": "double"
///         },
///         "discount_percentage": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "discount_amount": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "net_excluding_tax": {
///             "type": "number",
///             "format": "double"
///         },
///         "total_tax": {
///             "type": "number",
///             "format": "double"
///         },
///         "total": {
///             "type": "number",
///             "format": "double"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "net_excluding_tax",
///         "presentation_id",
///         "presentation_name",
///         "presentation_quantity_multiplier",
///         "product_id",
///         "product_name",
///         "quantity",
///         "total",
///         "total_tax",
///         "unit_price_excluding_tax"
///     ],
///     "additionalProperties": false
/// }
library order_line_dto;

import 'exports.dart';
part 'order_line_dto.freezed.dart';
part 'order_line_dto.g.dart'; // OrderLineDto

@freezed
abstract class OrderLineDto with _$OrderLineDto {
  const OrderLineDto._();

  @jsonSerializable
  const factory OrderLineDto({
    /// id
    @JsonKey(name: OrderLineDto.idKey_) required String id,

    /// productId
    @JsonKey(name: OrderLineDto.productIdKey_) required String productId,

    /// productName
    @JsonKey(name: OrderLineDto.productNameKey_) required String productName,

    /// variantId
    @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,

    /// variantName
    @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,

    /// presentationId
    @JsonKey(name: OrderLineDto.presentationIdKey_)
    required String presentationId,

    /// presentationName
    @JsonKey(name: OrderLineDto.presentationNameKey_)
    required String presentationName,

    /// presentationQuantityMultiplier
    @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
    required int presentationQuantityMultiplier,

    /// quantity
    @JsonKey(name: OrderLineDto.quantityKey_) required int quantity,

    /// unitPriceExcludingTax
    @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
    required double unitPriceExcludingTax,

    /// discountPercentage
    @JsonKey(name: OrderLineDto.discountPercentageKey_)
    double? discountPercentage,

    /// discountAmount
    @JsonKey(name: OrderLineDto.discountAmountKey_) double? discountAmount,

    /// netExcludingTax
    @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
    required double netExcludingTax,

    /// totalTax
    @JsonKey(name: OrderLineDto.totalTaxKey_) required double totalTax,

    /// total
    @JsonKey(name: OrderLineDto.totalKey_) required double total,
  }) = _OrderLineDto;

  factory OrderLineDto.fromJson(Map<String, dynamic> json) =>
      _$OrderLineDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String productIdKey_ = r'product_id';

  static const String productNameKey_ = r'product_name';

  static const String variantIdKey_ = r'variant_id';

  static const String variantNameKey_ = r'variant_name';

  static const String presentationIdKey_ = r'presentation_id';

  static const String presentationNameKey_ = r'presentation_name';

  static const String presentationQuantityMultiplierKey_ =
      r'presentation_quantity_multiplier';

  static const String quantityKey_ = r'quantity';

  static const String unitPriceExcludingTaxKey_ = r'unit_price_excluding_tax';

  static const String discountPercentageKey_ = r'discount_percentage';

  static const String discountAmountKey_ = r'discount_amount';

  static const String netExcludingTaxKey_ = r'net_excluding_tax';

  static const String totalTaxKey_ = r'total_tax';

  static const String totalKey_ = r'total';
}
