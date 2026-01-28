/// CreateCustomerDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
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
///             "type": "boolean"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "require_full_payment_on_close"
///     ],
///     "additionalProperties": false
/// }
library create_customer_dto;

import 'exports.dart';
part 'create_customer_dto.freezed.dart';
part 'create_customer_dto.g.dart'; // CreateCustomerDto

@freezed
abstract class CreateCustomerDto with _$CreateCustomerDto {
  const CreateCustomerDto._();

  @jsonSerializable
  const factory CreateCustomerDto({
    /// name
    @JsonKey(name: CreateCustomerDto.nameKey_) required String name,

    /// cuit
    @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,

    /// address
    @JsonKey(name: CreateCustomerDto.addressKey_) String? address,

    /// requireFullPaymentOnClose
    @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
    required bool requireFullPaymentOnClose,
  }) = _CreateCustomerDto;

  factory CreateCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String cuitKey_ = r'cuit';

  static const String addressKey_ = r'address';

  static const String requireFullPaymentOnCloseKey_ =
      r'require_full_payment_on_close';
}
