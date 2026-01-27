/// CustomerDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
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
///         },
///         "balance": {
///             "type": "number",
///             "format": "double"
///         },
///         "created_at": {
///             "type": "string",
///             "format": "date-time"
///         },
///         "modified_at": {
///             "type": "string",
///             "format": "date-time"
///         }
///     },
///     "type": "object",
///     "required": [
///         "balance",
///         "created_at",
///         "id",
///         "modified_at",
///         "name",
///         "require_full_payment_on_close"
///     ],
///     "additionalProperties": false
/// }
library customer_dto;

import 'exports.dart';
part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart'; // CustomerDto

@freezed
abstract class CustomerDto with _$CustomerDto {
  const CustomerDto._();

  @jsonSerializable
  const factory CustomerDto({
    /// id
    @JsonKey(name: CustomerDto.idKey_) required String id,

    /// name
    @JsonKey(name: CustomerDto.nameKey_) required String name,

    /// cuit
    @JsonKey(name: CustomerDto.cuitKey_) String? cuit,

    /// address
    @JsonKey(name: CustomerDto.addressKey_) String? address,

    /// requireFullPaymentOnClose
    @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
    required bool requireFullPaymentOnClose,

    /// balance
    @JsonKey(name: CustomerDto.balanceKey_) required double balance,

    /// createdAt
    @JsonKey(name: CustomerDto.createdAtKey_) required DateTime createdAt,

    /// modifiedAt
    @JsonKey(name: CustomerDto.modifiedAtKey_) required DateTime modifiedAt,
  }) = _CustomerDto;

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String cuitKey_ = r'cuit';

  static const String addressKey_ = r'address';

  static const String requireFullPaymentOnCloseKey_ =
      r'require_full_payment_on_close';

  static const String balanceKey_ = r'balance';

  static const String createdAtKey_ = r'created_at';

  static const String modifiedAtKey_ = r'modified_at';
}
