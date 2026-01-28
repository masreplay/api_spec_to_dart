// OrderPaymentStatus
// {
//     "type": "string",
//     "enum": [
//         "awaitingPayment",
//         "paid"
//     ]
// }

library order_payment_status;

import 'exports.dart';
part 'order_payment_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum OrderPaymentStatus {
  @JsonValue("awaitingPayment")
  awaitingPayment,
  @JsonValue("paid")
  paid;

  factory OrderPaymentStatus.fromJson(String json) =>
      OrderPaymentStatus.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => OrderPaymentStatus.values.first,
      );

  String toJson() => _$OrderPaymentStatusEnumMap[this]!;
}
