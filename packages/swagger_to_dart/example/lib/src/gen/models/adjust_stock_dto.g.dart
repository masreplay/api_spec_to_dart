// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_stock_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdjustStockDto _$AdjustStockDtoFromJson(Map<String, dynamic> json) =>
    _AdjustStockDto(
      salePointId: json['sale_point_id'] as String,
      variantId: json['variant_id'] as String?,
      presentationId: json['presentation_id'] as String,
      expirationDate: json['expiration_date'] == null
          ? null
          : DateTime.parse(json['expiration_date'] as String),
      quantity: (json['quantity'] as num).toInt(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$AdjustStockDtoToJson(_AdjustStockDto instance) =>
    <String, dynamic>{
      'sale_point_id': instance.salePointId,
      if (instance.variantId case final value?) 'variant_id': value,
      'presentation_id': instance.presentationId,
      if (instance.expirationDate?.toIso8601String() case final value?)
        'expiration_date': value,
      'quantity': instance.quantity,
      if (instance.reason case final value?) 'reason': value,
    };
