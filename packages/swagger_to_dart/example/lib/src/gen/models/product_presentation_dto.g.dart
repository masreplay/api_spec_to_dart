// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_presentation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPresentationDto _$ProductPresentationDtoFromJson(
        Map<String, dynamic> json) =>
    _ProductPresentationDto(
      id: json['id'] as String,
      name: json['name'] as String,
      quantityMultiplier: (json['quantity_multiplier'] as num).toInt(),
      isDefault: json['is_default'] as bool,
      salePrice: (json['sale_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductPresentationDtoToJson(
        _ProductPresentationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity_multiplier': instance.quantityMultiplier,
      'is_default': instance.isDefault,
      if (instance.salePrice case final value?) 'sale_price': value,
    };
