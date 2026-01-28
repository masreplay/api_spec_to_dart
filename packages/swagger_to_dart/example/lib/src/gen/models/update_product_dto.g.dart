// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductDto _$UpdateProductDtoFromJson(Map<String, dynamic> json) =>
    _UpdateProductDto(
      name: json['name'] as String?,
      categoryId: json['category_id'] as String?,
      description: json['description'] as String?,
      barcode: json['barcode'] as String?,
      purchasePrice: (json['purchase_price'] as num?)?.toDouble(),
      markupPercentage: (json['markup_percentage'] as num?)?.toDouble(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      allowGeneric: json['allow_generic'] as bool?,
      useBooleanStock: json['use_boolean_stock'] as bool?,
      hasStock: json['has_stock'] as bool?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) =>
              UpdateProductVariantDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentations: (json['presentations'] as List<dynamic>?)
          ?.map((e) =>
              UpdateProductPresentationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateProductDtoToJson(_UpdateProductDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.categoryId case final value?) 'category_id': value,
      if (instance.description case final value?) 'description': value,
      if (instance.barcode case final value?) 'barcode': value,
      if (instance.purchasePrice case final value?) 'purchase_price': value,
      if (instance.markupPercentage case final value?)
        'markup_percentage': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      if (instance.allowGeneric case final value?) 'allow_generic': value,
      if (instance.useBooleanStock case final value?)
        'use_boolean_stock': value,
      if (instance.hasStock case final value?) 'has_stock': value,
      if (instance.variants?.map((e) => e.toJson()).toList() case final value?)
        'variants': value,
      if (instance.presentations?.map((e) => e.toJson()).toList()
          case final value?)
        'presentations': value,
    };
