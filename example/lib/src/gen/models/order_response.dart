import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const OrderResponse._();

  @JsonSerializable(converters: convertors)
  const factory OrderResponse({
    /// Price
    @JsonKey(name: 'price') required num? price,

    /// Currency
    @JsonKey(name: 'currency') required String? currency,

    /// Product
    @JsonKey(name: 'product') required dynamic product,
    @JsonKey(name: 'order_type') required OrderTypeEnum? orderType,
    @JsonKey(name: 'order_status') required OrderStatusEnum? orderStatus,

    /// Order Status History
    @JsonKey(name: 'order_status_history')
    required Map<String, dynamic>? orderStatusHistory,

    /// Quantity
    @JsonKey(name: 'quantity') required int? quantity,

    /// Payment Method
    @JsonKey(name: 'payment_method') required String? paymentMethod,

    /// Payment Status
    @JsonKey(name: 'payment_status') required String? paymentStatus,

    /// Shipping Address
    @JsonKey(name: 'shipping_address') required String? shippingAddress,
    @JsonKey(name: 'shipping_status')
    required ShippingStatusEnum? shippingStatus,

    /// Discount
    @JsonKey(name: 'discount') required num? discount,
    @JsonKey(name: 'discount_type') required DiscountTypeEnum? discountType,

    /// Payment Processing Id
    @JsonKey(name: 'payment_processing_id')
    required String? paymentProcessingId,

    /// Final Price
    @JsonKey(name: 'final_price') required num? finalPrice,

    /// Id
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'student') required StudentTable? student,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}
