// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_presentation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProductPresentationDto _$CreateProductPresentationDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateProductPresentationDto(
      name: json['name'] as String,
      quantityMultiplier: (json['quantity_multiplier'] as num).toInt(),
      isDefault: json['is_default'] as bool,
    );

Map<String, dynamic> _$CreateProductPresentationDtoToJson(
        _CreateProductPresentationDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity_multiplier': instance.quantityMultiplier,
      'is_default': instance.isDefault,
    };
