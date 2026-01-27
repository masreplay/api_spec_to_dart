/// UpdateProductDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
///         },
///         "category_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
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
///         "markup_percentage": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "sale_price": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "allow_generic": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "use_boolean_stock": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "has_stock": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "variants": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/UpdateProductVariantDto"
///             },
///             "nullable": true
///         },
///         "presentations": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/UpdateProductPresentationDto"
///             },
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_product_dto;

import 'exports.dart';
part 'update_product_dto.freezed.dart';
part 'update_product_dto.g.dart'; // UpdateProductDto

@freezed
abstract class UpdateProductDto with _$UpdateProductDto {
  const UpdateProductDto._();

  @jsonSerializable
  const factory UpdateProductDto({
    /// name
    @JsonKey(name: UpdateProductDto.nameKey_) String? name,

    /// categoryId
    @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,

    /// description
    @JsonKey(name: UpdateProductDto.descriptionKey_) String? description,

    /// barcode
    @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,

    /// purchasePrice
    @JsonKey(name: UpdateProductDto.purchasePriceKey_) double? purchasePrice,

    /// markupPercentage
    @JsonKey(name: UpdateProductDto.markupPercentageKey_)
    double? markupPercentage,

    /// salePrice
    @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,

    /// allowGeneric
    @JsonKey(name: UpdateProductDto.allowGenericKey_) bool? allowGeneric,

    /// useBooleanStock
    @JsonKey(name: UpdateProductDto.useBooleanStockKey_) bool? useBooleanStock,

    /// hasStock
    @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,

    /// variants
    @JsonKey(name: UpdateProductDto.variantsKey_)
    List<UpdateProductVariantDto>? variants,

    /// presentations
    @JsonKey(name: UpdateProductDto.presentationsKey_)
    List<UpdateProductPresentationDto>? presentations,
  }) = _UpdateProductDto;

  factory UpdateProductDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String categoryIdKey_ = r'category_id';

  static const String descriptionKey_ = r'description';

  static const String barcodeKey_ = r'barcode';

  static const String purchasePriceKey_ = r'purchase_price';

  static const String markupPercentageKey_ = r'markup_percentage';

  static const String salePriceKey_ = r'sale_price';

  static const String allowGenericKey_ = r'allow_generic';

  static const String useBooleanStockKey_ = r'use_boolean_stock';

  static const String hasStockKey_ = r'has_stock';

  static const String variantsKey_ = r'variants';

  static const String presentationsKey_ = r'presentations';
}
