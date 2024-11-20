import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'order_public.freezed.dart';
part 'order_public.g.dart';

@freezed
class OrderPublic with _$OrderPublic {
  const OrderPublic._();

  @JsonSerializable(converters: convertors)
  const factory OrderPublic({
    @JsonKey(name: 'price')

    /// Price
    required num? price,
    @JsonKey(name: 'currency')

    /// Currency
    required String? currency,
    @JsonKey(name: 'product')

    /// Product
    required dynamic product,
    @JsonKey(name: 'order_type') required OrderTypeEnum? orderType,
    @JsonKey(name: 'order_status') required OrderStatusEnum? orderStatus,
    @JsonKey(name: 'order_status_history')

    /// Order Status History
    required Map? orderStatusHistory,
    @JsonKey(name: 'quantity')

    /// Quantity
    required int? quantity,
    @JsonKey(name: 'payment_method')

    /// Payment Method
    required String? paymentMethod,
    @JsonKey(name: 'payment_status')

    /// Payment Status
    required String? paymentStatus,
    @JsonKey(name: 'shipping_address')

    /// Shipping Address
    required String? shippingAddress,
    @JsonKey(name: 'shipping_status')
    required ShippingStatusEnum? shippingStatus,
    @JsonKey(name: 'discount')

    /// Discount
    required num? discount,
    @JsonKey(name: 'discount_type') required DiscountTypeEnum? discountType,
    @JsonKey(name: 'payment_processing_id')

    /// Payment Processing Id
    required String? paymentProcessingId,
    @JsonKey(name: 'final_price')

    /// Final Price
    required num? finalPrice,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'student')

    /// Student
    required StudentTableMap? student,
  }) = _OrderPublic;

  factory OrderPublic.fromJson(Map<String, dynamic> json) =>
      _$OrderPublicFromJson(json);
}
