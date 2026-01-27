/// ProductDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "category_path": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/ProductCategoryRef"
///             }
///         },
///         "name": {
///             "type": "string"
///         },
///         "description": {
///             "type": "string",
///             "nullable": true
///         },
///         "barcode": {
///             "type": "string",
///             "nullable": true
///         },
///         "unitary_purchase_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "markup_percentage": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "unitary_sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "has_variants": {
///             "type": "boolean"
///         },
///         "use_boolean_stock": {
///             "type": "boolean"
///         },
///         "has_stock": {
///             "type": "boolean"
///         },
///         "stock": {
///             "type": "integer",
///             "format": "int32",
///             "nullable": true
///         },
///         "base_uom": {
///             "$ref": "#/components/schemas/BaseUomKind"
///         },
///         "allow_generic": {
///             "type": "boolean"
///         },
///         "variants": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/ProductVariantDto"
///             }
///         },
///         "presentations": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/ProductPresentationDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "allow_generic",
///         "base_uom",
///         "category_path",
///         "has_stock",
///         "has_variants",
///         "id",
///         "name",
///         "presentations",
///         "use_boolean_stock",
///         "variants"
///     ],
///     "additionalProperties": false
/// }
library product_dto;

import 'exports.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart'; // ProductDto

@freezed
abstract class ProductDto with _$ProductDto {
  const ProductDto._();

  @jsonSerializable
  const factory ProductDto({
    /// id
    @JsonKey(name: ProductDto.idKey_) required String id,

    /// categoryPath
    @JsonKey(name: ProductDto.categoryPathKey_)
    required List<ProductCategoryRef> categoryPath,

    /// name
    @JsonKey(name: ProductDto.nameKey_) required String name,

    /// description
    @JsonKey(name: ProductDto.descriptionKey_) String? description,

    /// barcode
    @JsonKey(name: ProductDto.barcodeKey_) String? barcode,

    /// unitaryPurchasePrice
    @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
    double? unitaryPurchasePrice,

    /// markupPercentage
    @JsonKey(name: ProductDto.markupPercentageKey_) double? markupPercentage,

    /// unitarySalePrice
    @JsonKey(name: ProductDto.unitarySalePriceKey_) double? unitarySalePrice,

    /// hasVariants
    @JsonKey(name: ProductDto.hasVariantsKey_) required bool hasVariants,

    /// useBooleanStock
    @JsonKey(name: ProductDto.useBooleanStockKey_)
    required bool useBooleanStock,

    /// hasStock
    @JsonKey(name: ProductDto.hasStockKey_) required bool hasStock,

    /// stock
    @JsonKey(name: ProductDto.stockKey_) int? stock,

    /// baseUom
    @JsonKey(name: ProductDto.baseUomKey_) required BaseUomKind baseUom,

    /// allowGeneric
    @JsonKey(name: ProductDto.allowGenericKey_) required bool allowGeneric,

    /// variants
    @JsonKey(name: ProductDto.variantsKey_)
    required List<ProductVariantDto> variants,

    /// presentations
    @JsonKey(name: ProductDto.presentationsKey_)
    required List<ProductPresentationDto> presentations,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String categoryPathKey_ = r'category_path';

  static const String nameKey_ = r'name';

  static const String descriptionKey_ = r'description';

  static const String barcodeKey_ = r'barcode';

  static const String unitaryPurchasePriceKey_ = r'unitary_purchase_price';

  static const String markupPercentageKey_ = r'markup_percentage';

  static const String unitarySalePriceKey_ = r'unitary_sale_price';

  static const String hasVariantsKey_ = r'has_variants';

  static const String useBooleanStockKey_ = r'use_boolean_stock';

  static const String hasStockKey_ = r'has_stock';

  static const String stockKey_ = r'stock';

  static const String baseUomKey_ = r'base_uom';

  static const String allowGenericKey_ = r'allow_generic';

  static const String variantsKey_ = r'variants';

  static const String presentationsKey_ = r'presentations';
}
