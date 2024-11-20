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
    @JsonKey(name: 'price') required num? price,
    @JsonKey(name: 'currency') required String? currency,
    @JsonKey(name: 'product') required dynamic product,
    @JsonKey(name: 'order_type') required OrderTypeEnum? orderType,
    @JsonKey(name: 'order_status') required OrderStatusEnum? orderStatus,
    @JsonKey(name: 'order_status_history') required Map? orderStatusHistory,
    @JsonKey(name: 'quantity') required int? quantity,
    @JsonKey(name: 'payment_method') required String? paymentMethod,
    @JsonKey(name: 'payment_status') required String? paymentStatus,
    @JsonKey(name: 'shipping_address') required String? shippingAddress,
    @JsonKey(name: 'shipping_status')
    required ShippingStatusEnum? shippingStatus,
    @JsonKey(name: 'discount') required num? discount,
    @JsonKey(name: 'discount_type') required DiscountTypeEnum? discountType,
    @JsonKey(name: 'payment_processing_id')
    required String? paymentProcessingId,
    @JsonKey(name: 'final_price') required num? finalPrice,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'student') required StudentTableMap? student,
  }) = _OrderPublic;

  factory OrderPublic.fromJson(Map<String, dynamic> json) =>
      _$OrderPublicFromJson(json);
}
