// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_presentation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductPresentationDto _$UpdateProductPresentationDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdateProductPresentationDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      quantityMultiplier: (json['quantity_multiplier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateProductPresentationDtoToJson(
        _UpdateProductPresentationDto instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.quantityMultiplier case final value?)
        'quantity_multiplier': value,
    };
