/// CreatePriceListDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
///         },
///         "valid_from": {
///             "type": "string",
///             "format": "date-time",
///             "nullable": true
///         },
///         "valid_to": {
///             "type": "string",
///             "format": "date-time",
///             "nullable": true
///         },
///         "sale_point_ids": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "uuid"
///             }
///         },
///         "policies": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CreatePriceListPolicyDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "policies",
///         "sale_point_ids"
///     ],
///     "additionalProperties": false
/// }
library create_price_list_dto;

import 'exports.dart';
part 'create_price_list_dto.freezed.dart';
part 'create_price_list_dto.g.dart'; // CreatePriceListDto

@freezed
abstract class CreatePriceListDto with _$CreatePriceListDto {
  const CreatePriceListDto._();

  @jsonSerializable
  const factory CreatePriceListDto({
    /// name
    @JsonKey(name: CreatePriceListDto.nameKey_) required String name,

    /// validFrom
    @JsonKey(name: CreatePriceListDto.validFromKey_) DateTime? validFrom,

    /// validTo
    @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,

    /// salePointIds
    @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
    required List<String> salePointIds,

    /// policies
    @JsonKey(name: CreatePriceListDto.policiesKey_)
    required List<CreatePriceListPolicyDto> policies,
  }) = _CreatePriceListDto;

  factory CreatePriceListDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String validFromKey_ = r'valid_from';

  static const String validToKey_ = r'valid_to';

  static const String salePointIdsKey_ = r'sale_point_ids';

  static const String policiesKey_ = r'policies';
}
