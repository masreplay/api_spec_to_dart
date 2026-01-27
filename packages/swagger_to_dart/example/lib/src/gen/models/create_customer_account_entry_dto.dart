/// CreateCustomerAccountEntryDto
/// {
///     "properties": {
///         "kind": {
///             "$ref": "#/components/schemas/CustomerAccountEntryKind"
///         },
///         "amount": {
///             "type": "number",
///             "format": "double"
///         },
///         "notes": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": [
///         "amount",
///         "kind"
///     ],
///     "additionalProperties": false
/// }
library create_customer_account_entry_dto;

import 'exports.dart';
part 'create_customer_account_entry_dto.freezed.dart';
part 'create_customer_account_entry_dto.g.dart'; // CreateCustomerAccountEntryDto

@freezed
abstract class CreateCustomerAccountEntryDto
    with _$CreateCustomerAccountEntryDto {
  const CreateCustomerAccountEntryDto._();

  @jsonSerializable
  const factory CreateCustomerAccountEntryDto({
    /// kind
    @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
    required CustomerAccountEntryKind kind,

    /// amount
    @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
    required double amount,

    /// notes
    @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_) String? notes,
  }) = _CreateCustomerAccountEntryDto;

  factory CreateCustomerAccountEntryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerAccountEntryDtoFromJson(json);

  static const String kindKey_ = r'kind';

  static const String amountKey_ = r'amount';

  static const String notesKey_ = r'notes';
}
