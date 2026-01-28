/// CreateProductDto
/// {
///     "properties": {
///         "name": {
///             "type": "string"
///         },
///         "category_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "base_uom": {
///             "$ref": "#/components/schemas/BaseUomKind"
///         },
///         "description": {
///             "type": "string",
///             "nullable": true
///         },
///         "barcode": {
///             "type": "string",
///             "nullable": true
///         },
///         "purchase_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "markup_percentage": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "use_boolean_stock": {
///             "type": "boolean"
///         },
///         "allow_generic": {
///             "type": "boolean"
///         },
///         "variants": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CreateProductVariantDto"
///             }
///         },
///         "presentations": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CreateProductPresentationDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "allow_generic",
///         "base_uom",
///         "category_id",
///         "name",
///         "presentations",
///         "use_boolean_stock",
///         "variants"
///     ],
///     "additionalProperties": false
/// }
library create_product_dto;

import 'exports.dart';
part 'create_product_dto.freezed.dart';
part 'create_product_dto.g.dart'; // CreateProductDto

@freezed
abstract class CreateProductDto with _$CreateProductDto {
  const CreateProductDto._();

  @jsonSerializable
  const factory CreateProductDto({
    /// name
    @JsonKey(name: CreateProductDto.nameKey_) required String name,

    /// categoryId
    @JsonKey(name: CreateProductDto.categoryIdKey_) required String categoryId,

    /// baseUom
    @JsonKey(name: CreateProductDto.baseUomKey_) required BaseUomKind baseUom,

    /// description
    @JsonKey(name: CreateProductDto.descriptionKey_) String? description,

    /// barcode
    @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,

    /// purchasePrice
    @JsonKey(name: CreateProductDto.purchasePriceKey_) double? purchasePrice,

    /// salePrice
    @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,

    /// markupPercentage
    @JsonKey(name: CreateProductDto.markupPercentageKey_)
    double? markupPercentage,

    /// useBooleanStock
    @JsonKey(name: CreateProductDto.useBooleanStockKey_)
    required bool useBooleanStock,

    /// allowGeneric
    @JsonKey(name: CreateProductDto.allowGenericKey_)
    required bool allowGeneric,

    /// variants
    @JsonKey(name: CreateProductDto.variantsKey_)
    required List<CreateProductVariantDto> variants,

    /// presentations
    @JsonKey(name: CreateProductDto.presentationsKey_)
    required List<CreateProductPresentationDto> presentations,
  }) = _CreateProductDto;

  factory CreateProductDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String categoryIdKey_ = r'category_id';

  static const String baseUomKey_ = r'base_uom';

  static const String descriptionKey_ = r'description';

  static const String barcodeKey_ = r'barcode';

  static const String purchasePriceKey_ = r'purchase_price';

  static const String salePriceKey_ = r'sale_price';

  static const String markupPercentageKey_ = r'markup_percentage';

  static const String useBooleanStockKey_ = r'use_boolean_stock';

  static const String allowGenericKey_ = r'allow_generic';

  static const String variantsKey_ = r'variants';

  static const String presentationsKey_ = r'presentations';
}
