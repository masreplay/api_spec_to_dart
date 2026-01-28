// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCustomerDto _$CreateCustomerDtoFromJson(Map<String, dynamic> json) =>
    _CreateCustomerDto(
      name: json['name'] as String,
      cuit: json['cuit'] as String?,
      address: json['address'] as String?,
      requireFullPaymentOnClose: json['require_full_payment_on_close'] as bool,
    );

Map<String, dynamic> _$CreateCustomerDtoToJson(_CreateCustomerDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.cuit case final value?) 'cuit': value,
      if (instance.address case final value?) 'address': value,
      'require_full_payment_on_close': instance.requireFullPaymentOnClose,
    };
