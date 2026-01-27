/// UpdateProductVariantDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "name": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_product_variant_dto;

import 'exports.dart';
part 'update_product_variant_dto.freezed.dart';
part 'update_product_variant_dto.g.dart'; // UpdateProductVariantDto

@freezed
abstract class UpdateProductVariantDto with _$UpdateProductVariantDto {
  const UpdateProductVariantDto._();

  @jsonSerializable
  const factory UpdateProductVariantDto({
    /// id
    @JsonKey(name: UpdateProductVariantDto.idKey_) String? id,

    /// name
    @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name,
  }) = _UpdateProductVariantDto;

  factory UpdateProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductVariantDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';
}
