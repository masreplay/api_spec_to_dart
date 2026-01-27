/// ProductVariantDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name"
///     ],
///     "additionalProperties": false
/// }
library product_variant_dto;

import 'exports.dart';
part 'product_variant_dto.freezed.dart';
part 'product_variant_dto.g.dart'; // ProductVariantDto

@freezed
abstract class ProductVariantDto with _$ProductVariantDto {
  const ProductVariantDto._();

  @jsonSerializable
  const factory ProductVariantDto({
    /// id
    @JsonKey(name: ProductVariantDto.idKey_) required String id,

    /// name
    @JsonKey(name: ProductVariantDto.nameKey_) required String name,
  }) = _ProductVariantDto;

  factory ProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';
}
