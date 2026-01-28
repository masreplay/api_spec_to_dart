/// CustomerAccountEntryDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "kind": {
///             "$ref": "#/components/schemas/CustomerAccountEntryKind"
///         },
///         "notes": {
///             "type": "string",
///             "nullable": true
///         },
///         "order": {
///             "oneOf": [
///                 {
///                     "$ref": "#/components/schemas/CustomerAccountEntryOrderDetailsDto"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ]
///         },
///         "amount": {
///             "type": "number",
///             "format": "double"
///         },
///         "balance_after": {
///             "type": "number",
///             "format": "double"
///         },
///         "created_at": {
///             "type": "string",
///             "format": "date-time"
///         }
///     },
///     "type": "object",
///     "required": [
///         "amount",
///         "balance_after",
///         "created_at",
///         "id",
///         "kind"
///     ],
///     "additionalProperties": false
/// }
library customer_account_entry_dto;

import 'exports.dart';
part 'customer_account_entry_dto.freezed.dart';
part 'customer_account_entry_dto.g.dart'; // CustomerAccountEntryDto

@freezed
abstract class CustomerAccountEntryDto with _$CustomerAccountEntryDto {
  const CustomerAccountEntryDto._();

  @jsonSerializable
  const factory CustomerAccountEntryDto({
    /// id
    @JsonKey(name: CustomerAccountEntryDto.idKey_) required String id,

    /// kind
    @JsonKey(name: CustomerAccountEntryDto.kindKey_)
    required CustomerAccountEntryKind kind,

    /// notes
    @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,

    /// order
    @JsonKey(name: CustomerAccountEntryDto.orderKey_)
    CustomerAccountEntryOrderDetailsDto? order,

    /// amount
    @JsonKey(name: CustomerAccountEntryDto.amountKey_) required double amount,

    /// balanceAfter
    @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
    required double balanceAfter,

    /// createdAt
    @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
    required DateTime createdAt,
  }) = _CustomerAccountEntryDto;

  factory CustomerAccountEntryDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccountEntryDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String kindKey_ = r'kind';

  static const String notesKey_ = r'notes';

  static const String orderKey_ = r'order';

  static const String amountKey_ = r'amount';

  static const String balanceAfterKey_ = r'balance_after';

  static const String createdAtKey_ = r'created_at';
}
