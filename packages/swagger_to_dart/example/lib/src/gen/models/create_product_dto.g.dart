// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProductDto _$CreateProductDtoFromJson(Map<String, dynamic> json) =>
    _CreateProductDto(
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      baseUom: BaseUomKind.fromJson(json['base_uom'] as String),
      description: json['description'] as String?,
      barcode: json['barcode'] as String?,
      purchasePrice: (json['purchase_price'] as num?)?.toDouble(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      markupPercentage: (json['markup_percentage'] as num?)?.toDouble(),
      useBooleanStock: json['use_boolean_stock'] as bool,
      allowGeneric: json['allow_generic'] as bool,
      variants: (json['variants'] as List<dynamic>)
          .map((e) =>
              CreateProductVariantDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentations: (json['presentations'] as List<dynamic>)
          .map((e) =>
              CreateProductPresentationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateProductDtoToJson(_CreateProductDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category_id': instance.categoryId,
      'base_uom': instance.baseUom.toJson(),
      if (instance.description case final value?) 'description': value,
      if (instance.barcode case final value?) 'barcode': value,
      if (instance.purchasePrice case final value?) 'purchase_price': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      if (instance.markupPercentage case final value?)
        'markup_percentage': value,
      'use_boolean_stock': instance.useBooleanStock,
      'allow_generic': instance.allowGeneric,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'presentations': instance.presentations.map((e) => e.toJson()).toList(),
    };
