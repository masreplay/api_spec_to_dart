// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_variant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductVariantDto _$UpdateProductVariantDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdateProductVariantDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateProductVariantDtoToJson(
        _UpdateProductVariantDto instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
    };
