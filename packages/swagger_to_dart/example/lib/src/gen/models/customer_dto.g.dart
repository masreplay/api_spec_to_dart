// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) => _CustomerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      cuit: json['cuit'] as String?,
      address: json['address'] as String?,
      requireFullPaymentOnClose: json['require_full_payment_on_close'] as bool,
      balance: (json['balance'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$CustomerDtoToJson(_CustomerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.cuit case final value?) 'cuit': value,
      if (instance.address case final value?) 'address': value,
      'require_full_payment_on_close': instance.requireFullPaymentOnClose,
      'balance': instance.balance,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
