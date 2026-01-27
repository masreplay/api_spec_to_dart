// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
      id: json['id'] as String,
      categoryPath: (json['category_path'] as List<dynamic>)
          .map((e) => ProductCategoryRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      description: json['description'] as String?,
      barcode: json['barcode'] as String?,
      unitaryPurchasePrice:
          (json['unitary_purchase_price'] as num?)?.toDouble(),
      markupPercentage: (json['markup_percentage'] as num?)?.toDouble(),
      unitarySalePrice: (json['unitary_sale_price'] as num?)?.toDouble(),
      hasVariants: json['has_variants'] as bool,
      useBooleanStock: json['use_boolean_stock'] as bool,
      hasStock: json['has_stock'] as bool,
      stock: (json['stock'] as num?)?.toInt(),
      baseUom: BaseUomKind.fromJson(json['base_uom'] as String),
      allowGeneric: json['allow_generic'] as bool,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => ProductVariantDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentations: (json['presentations'] as List<dynamic>)
          .map(
              (e) => ProductPresentationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_path': instance.categoryPath.map((e) => e.toJson()).toList(),
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      if (instance.barcode case final value?) 'barcode': value,
      if (instance.unitaryPurchasePrice case final value?)
        'unitary_purchase_price': value,
      if (instance.markupPercentage case final value?)
        'markup_percentage': value,
      if (instance.unitarySalePrice case final value?)
        'unitary_sale_price': value,
      'has_variants': instance.hasVariants,
      'use_boolean_stock': instance.useBooleanStock,
      'has_stock': instance.hasStock,
      if (instance.stock case final value?) 'stock': value,
      'base_uom': instance.baseUom.toJson(),
      'allow_generic': instance.allowGeneric,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'presentations': instance.presentations.map((e) => e.toJson()).toList(),
    };
