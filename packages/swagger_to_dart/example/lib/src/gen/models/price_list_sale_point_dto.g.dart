// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_sale_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListSalePointDto _$PriceListSalePointDtoFromJson(
        Map<String, dynamic> json) =>
    _PriceListSalePointDto(
      salePointId: json['sale_point_id'] as String,
      salePointName: json['sale_point_name'] as String,
    );

Map<String, dynamic> _$PriceListSalePointDtoToJson(
        _PriceListSalePointDto instance) =>
    <String, dynamic>{
      'sale_point_id': instance.salePointId,
      'sale_point_name': instance.salePointName,
    };
