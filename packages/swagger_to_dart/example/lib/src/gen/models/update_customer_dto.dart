/// UpdateCustomerDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "cuit": {
///             "type": "string",
///             "nullable": true
///         },
///         "address": {
///             "type": "string",
///             "nullable": true
///         },
///         "require_full_payment_on_close": {
///             "type": "boolean",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_customer_dto;

import 'exports.dart';
part 'update_customer_dto.freezed.dart';
part 'update_customer_dto.g.dart'; // UpdateCustomerDto

@freezed
abstract class UpdateCustomerDto with _$UpdateCustomerDto {
  const UpdateCustomerDto._();

  @jsonSerializable
  const factory UpdateCustomerDto({
    /// name
    @JsonKey(name: UpdateCustomerDto.nameKey_) String? name,

    /// cuit
    @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,

    /// address
    @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,

    /// requireFullPaymentOnClose
    @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
    bool? requireFullPaymentOnClose,
  }) = _UpdateCustomerDto;

  factory UpdateCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String cuitKey_ = r'cuit';

  static const String addressKey_ = r'address';

  static const String requireFullPaymentOnCloseKey_ =
      r'require_full_payment_on_close';
}
