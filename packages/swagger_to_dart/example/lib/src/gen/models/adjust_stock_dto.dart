/// AdjustStockDto
/// {
///     "properties": {
///         "sale_point_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "variant_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "presentation_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "expiration_date": {
///             "type": "string",
///             "format": "date-time",
///             "nullable": true
///         },
///         "quantity": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "reason": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": [
///         "presentation_id",
///         "quantity",
///         "sale_point_id"
///     ],
///     "additionalProperties": false
/// }
library adjust_stock_dto;

import 'exports.dart';
part 'adjust_stock_dto.freezed.dart';
part 'adjust_stock_dto.g.dart'; // AdjustStockDto

@freezed
abstract class AdjustStockDto with _$AdjustStockDto {
  const AdjustStockDto._();

  @jsonSerializable
  const factory AdjustStockDto({
    /// salePointId
    @JsonKey(name: AdjustStockDto.salePointIdKey_) required String salePointId,

    /// variantId
    @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,

    /// presentationId
    @JsonKey(name: AdjustStockDto.presentationIdKey_)
    required String presentationId,

    /// expirationDate
    @JsonKey(name: AdjustStockDto.expirationDateKey_) DateTime? expirationDate,

    /// quantity
    @JsonKey(name: AdjustStockDto.quantityKey_) required int quantity,

    /// reason
    @JsonKey(name: AdjustStockDto.reasonKey_) String? reason,
  }) = _AdjustStockDto;

  factory AdjustStockDto.fromJson(Map<String, dynamic> json) =>
      _$AdjustStockDtoFromJson(json);

  static const String salePointIdKey_ = r'sale_point_id';

  static const String variantIdKey_ = r'variant_id';

  static const String presentationIdKey_ = r'presentation_id';

  static const String expirationDateKey_ = r'expiration_date';

  static const String quantityKey_ = r'quantity';

  static const String reasonKey_ = r'reason';
}
