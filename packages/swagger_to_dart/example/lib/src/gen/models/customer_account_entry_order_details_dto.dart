/// CustomerAccountEntryOrderDetailsDto
/// {
///     "properties": {
///         "order_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "order_number": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "amount": {
///             "type": "number",
///             "format": "double"
///         },
///         "date": {
///             "type": "string",
///             "format": "date-time"
///         }
///     },
///     "type": "object",
///     "required": [
///         "amount",
///         "date",
///         "order_id",
///         "order_number"
///     ],
///     "additionalProperties": false
/// }
library customer_account_entry_order_details_dto;

import 'exports.dart';
part 'customer_account_entry_order_details_dto.freezed.dart';
part 'customer_account_entry_order_details_dto.g.dart'; // CustomerAccountEntryOrderDetailsDto

@freezed
abstract class CustomerAccountEntryOrderDetailsDto
    with _$CustomerAccountEntryOrderDetailsDto {
  const CustomerAccountEntryOrderDetailsDto._();

  @jsonSerializable
  const factory CustomerAccountEntryOrderDetailsDto({
    /// orderId
    @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
    required String orderId,

    /// orderNumber
    @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
    required int orderNumber,

    /// amount
    @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
    required double amount,

    /// date
    @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
    required DateTime date,
  }) = _CustomerAccountEntryOrderDetailsDto;

  factory CustomerAccountEntryOrderDetailsDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CustomerAccountEntryOrderDetailsDtoFromJson(json);

  static const String orderIdKey_ = r'order_id';

  static const String orderNumberKey_ = r'order_number';

  static const String amountKey_ = r'amount';

  static const String dateKey_ = r'date';
}
