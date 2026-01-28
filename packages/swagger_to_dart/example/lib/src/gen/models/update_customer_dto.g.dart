// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateCustomerDto _$UpdateCustomerDtoFromJson(Map<String, dynamic> json) =>
    _UpdateCustomerDto(
      name: json['name'] as String?,
      cuit: json['cuit'] as String?,
      address: json['address'] as String?,
      requireFullPaymentOnClose: json['require_full_payment_on_close'] as bool?,
    );

Map<String, dynamic> _$UpdateCustomerDtoToJson(_UpdateCustomerDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.cuit case final value?) 'cuit': value,
      if (instance.address case final value?) 'address': value,
      if (instance.requireFullPaymentOnClose case final value?)
        'require_full_payment_on_close': value,
    };
