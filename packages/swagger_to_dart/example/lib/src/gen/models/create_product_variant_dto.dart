/// CreateProductVariantDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name"
///     ],
///     "additionalProperties": false
/// }
library create_product_variant_dto;

import 'exports.dart';
part 'create_product_variant_dto.freezed.dart';
part 'create_product_variant_dto.g.dart'; // CreateProductVariantDto

@freezed
abstract class CreateProductVariantDto with _$CreateProductVariantDto {
  const CreateProductVariantDto._();

  @jsonSerializable
  const factory CreateProductVariantDto({
    /// name
    @JsonKey(name: CreateProductVariantDto.nameKey_) required String name,
  }) = _CreateProductVariantDto;

  factory CreateProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductVariantDtoFromJson(json);

  static const String nameKey_ = r'name';
}
